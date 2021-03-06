#pragma once
//=====================================================================//
/*!	@file
	@brief	RL78/G13 グループ SD カード・アクセス制御
    @author 平松邦仁 (hira@rvf-rc45.net)
	@copyright	Copyright (C) 2016 Kunihito Hiramatsu @n
				Released under the MIT license @n
				https://github.com/hirakuni45/RL78/blob/master/LICENSE
*/
//=====================================================================//
#include <cstring>
#include "common/port_utils.hpp"
#include "ff12a/mmc_io.hpp"
#include "common/format.hpp"
#include "common/string_utils.hpp"

namespace utils {

	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
	/*!
		@brief  SD カード・アクセス制御テンプレート
		@param[in]	CSI		CSI 制御クラス
		@param[in]	SELECT	SD カード選択 I/O ポートクラス
		@param[in]	POWER	SD カード電源 I/O ポートクラス
		@param[in]	DETECT	SD カード検出 I/O ポートクラス
	*/
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
	template <class CSI, class SELECT, class POWER, class DETECT>
	class sdc_io {
	public:
		typedef CSI csi_type;
		typedef fatfs::mmc_io<CSI, SELECT> mmc_type;

	private:
		static const int path_buff_size_ = 256;

		CSI&	csi_;

		fatfs::mmc_io<CSI, SELECT> mmc_;

		FATFS	fatfs_;  ///< FatFS コンテキスト

		uint8_t	mount_delay_;
		uint8_t	select_wait_;
		bool	cd_;
		bool	mount_;

		char	current_[path_buff_size_];

		static void dir_list_func_(const char* name, const FILINFO* fi, bool dir, void* option) {
			if(fi == nullptr) return;

			time_t t = str::fatfs_time_to(fi->fdate, fi->ftime);
			struct tm *m = localtime(&t);
			if(dir) {
				format("          ");
			} else {
				format("%9d ") % fi->fsize;
			}
			format("%s %2d %4d %02d:%02d ") % get_mon(m->tm_mon) % m->tm_mday
				% (m->tm_year + 1900) % m->tm_hour % m->tm_min;
			if(dir) {
				format("/");
			} else {
				format(" ");
			}
			format("%s\n") % name;
		}

		struct match_t {
			const char* key_;
			char* dst_;
			uint8_t cnt_;
			uint8_t no_;
		};

		static void match_func_(const char* name, const FILINFO* fi, bool dir, void* option) {
			match_t* t = reinterpret_cast<match_t*>(option);
			if(std::strncmp(name, t->key_, std::strlen(t->key_)) == 0) {
				if(t->dst_ != nullptr && t->cnt_ == t->no_) {
					std::strcpy(t->dst_, name);
				}
				++t->cnt_;
			}
		}

		struct copy_t {
			uint16_t	idx_;
			uint16_t	match_;
			char*		path_;
		};

		static void path_copy_func_(const char* name, const FILINFO* fi, bool dir, void* option) {
			copy_t* t = reinterpret_cast<match_t*>(option);
			if(t->idx_ == t->match_) {
				if(t->path_ != nullptr) {
					char* p = t->path_;
					if(dir) *p++ = '/';
					std::strcpy(p, name);
				}
			}
			++t->idx_;
		}

		void create_full_path_(const char* path, char* full) {
			std::strcpy(full, current_);
			if(path == nullptr || path[0] == 0) {
				if(full[0] == 0) {
					std::strcpy(full, "/");
				}
			} else if(std::strcmp(path, "..") == 0) {
				char* p = std::strrchr(full, '/');
				if(p != nullptr) {
					*p = 0;
				}
			} else if(path[0] == '/') {
				std::strcpy(full, path);
			} else {
				std::strcat(full, "/");
				std::strcat(full, path);
			}
		}

	public:
		typedef void (*dir_loop_func)(const char* name, const FILINFO* fi, bool dir, void* option);


		//-----------------------------------------------------------------//
		/*!
			@brief	コンストラクター
		 */
		//-----------------------------------------------------------------//
		sdc_io(CSI& csi) : csi_(csi), mmc_(csi_),
			mount_delay_(0), select_wait_(0), cd_(false), mount_(false) { }


		//-----------------------------------------------------------------//
		/*!
			@brief	初期化
		 */
		//-----------------------------------------------------------------//
		void initialize()
		{
			SELECT::PMC = 0;
			SELECT::DIR = 1;
			SELECT::P = 0;  // 電源ＯＦＦ時、「０」にしておかないと電流が回り込む

			POWER::PMC = 0;
			POWER::DIR = 1;
			POWER::P = 1; 

			DETECT::DIR = 0;  // input
			DETECT::POM = 0;
			DETECT::PU = 1;  // pull-up

			// CSI を初期化後、廃棄する事で関係ポートを初期化する。
			uint8_t intr_level = 0;
			if(!csi_.start(4000000, CSI::PHASE::TYPE4, intr_level)) {
				format("CSI Start fail ! (Clock spped over range)\n");
			}
			csi_.destroy();

			mount_ = false;

			current_[0] = 0;
			select_wait_ = 0;
			mount_delay_ = 0;
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	カレント・ファイルのオープン
			@param[in]	fp		ファイル構造体ポインター
			@param[in]	path	ファイル名
			@param[in]	mode	オープン・モード
			@return 移動成功なら「true」
		 */
		//-----------------------------------------------------------------//
		bool open(FIL* fp, const char* path, BYTE mode)
		{
			char full[path_buff_size_];
			create_full_path_(path, full);

#if _USE_LFN != 0
			str::utf8_to_sjis(full, full);
#endif
			if(f_open(fp, full, mode) != FR_OK) {
				return false;
			}
			return true;
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	カレント・パスの移動
			@param[in]	path	相対パス、又は、絶対パス
			@return 移動成功なら「true」
		 */
		//-----------------------------------------------------------------//
		bool cd(const char* path)
		{
			if(!mount_) return false;

			if(path == nullptr) return false;

			char full[path_buff_size_];
			create_full_path_(path, full);
#if _USE_LFN != 0
			char oem[path_buff_size_];
			str::utf8_to_sjis(full, oem);
			DIR dir;
			auto st = f_opendir(&dir, oem);
#else
			DIR dir;
			auto st = f_opendir(&dir, full);
#endif
			if(st != FR_OK) {
				format("Can't open dir(%d): '%s'\n") % static_cast<uint32_t>(st) % full;
				return false;
			}
			std::strcpy(current_, full);

			f_closedir(&dir);
			return true;
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	SD カードのディレクトリーリストでタスクを実行する
			@param[in]	root	ルート・パス
			@param[in]	func	実行関数
			@param[in]	todir  「true」の場合、ディレクトリーも関数を呼ぶ
			@param[in]	option	オプション・ポインター
			@return ファイル数
		 */
		//-----------------------------------------------------------------//
		uint16_t dir_loop(const char* root, dir_loop_func func = nullptr, bool todir = false,
			void* option = nullptr)
		{
			char full[path_buff_size_];
			DIR dir;
			FILINFO fi;

			if(!mount_) return 0;

			create_full_path_(root, full);
#if _USE_LFN != 0
			str::utf8_to_sjis(full, full);
#endif
			uint16_t num = 0;
			auto st = f_opendir(&dir, full);
			if(st != FR_OK) {
				format("Can't open dir(%d): '%s'\n") % static_cast<uint32_t>(st) % full;
			} else {
				std::strcat(full, "/");
				char* p = &full[std::strlen(full)];
				for(;;) {
					// Read a directory item
					if(f_readdir(&dir, &fi) != FR_OK) {
						format("Can't read dir\n");
						break;
					}
					if(!fi.fname[0]) break;
					if(func != nullptr) {
#if _USE_LFN != 0
						str::sjis_to_utf8(fi.fname, p);
#else
						std::strcpy(p, fi.fname);
#endif
						if(fi.fattrib & AM_DIR) {
							if(todir) {
								func(p, &fi, true, option);
							}
						} else {
							func(p, &fi, false, option);
						}
					}
					++num;
				}
				f_closedir(&dir);
			}
			return num;
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	SD カードのディレクトリから、ファイル名の取得
			@param[in]	root	ルート・パス
			@param[in]	match	所得パスのインデックス
			@param[out]	path	パスのコピー先
			@return 成功なら「true」
		 */
		//-----------------------------------------------------------------//
		bool get_dir_path(const char* root, uint16_t match, char* path)
		{
			copy_t t;
			t.idx_ = 0;
			t.match_ = match;
			t.path_ = path;
			dir_loop(root, path_copy_func_, true, &t);
			return true;
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	SD カードのディレクトリーをリストする
			@param[in]	root	ルート・パス
			@return ファイル数
		 */
		//-----------------------------------------------------------------//
		uint16_t dir(const char* root)
		{
			return dir_loop(root, dir_list_func_, true);
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	ファイル名候補の取得
			@param[in]	name	候補のキー
			@param[in]	no		候補の順番
			@param[out]	dst		候補の格納先
			@return 候補の数
		 */
		//-----------------------------------------------------------------//
		uint8_t match(const char* key, uint8_t no, char* dst)
		{
			match_t t;
			t.key_ = key;
			t.dst_ = dst;
			t.cnt_ = 0;
			t.no_ = no;
			dir_loop(current_, match_func_, false, &t);
			return t.cnt_;
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	SD カードアクセス・サービス（毎フレーム呼ぶ）
			@return マウントしている場合「true」
		 */
		//-----------------------------------------------------------------//
		bool service()
		{
			auto st = !DETECT::P();
			if(st) {
				if(select_wait_ < 255) {
					++select_wait_;
				}
			} else {
				select_wait_ = 0;
			}
			if(!cd_ && select_wait_ >= 10) {
				mount_delay_ = 30;  // 30 フレーム後にマウントする
				POWER::P = 0;
				SELECT::P = 1;
//				format("Card ditect\n");
			} else if(cd_ && select_wait_ == 0) {
				f_mount(&fatfs_, "", 0);
				csi_.destroy();
				POWER::P = 1;
				SELECT::P = 0;
				mount_ = false;
//				format("Card unditect\n");
			}
			if(select_wait_ >= 10) cd_ = true;
			else cd_ = false;

			if(mount_delay_) {
				--mount_delay_;
				if(mount_delay_ == 0) {
					auto st = f_mount(&fatfs_, "", 1);
					if(st != FR_OK) {
						format("Mount fail: %d\n") % static_cast<uint32_t>(st);
						csi_.destroy();
						POWER::P = 1;
						SELECT::P = 0;
						mount_ = false;
					} else {
						current_[0] = 0;
						mount_ = true;
					}
				}
			}
			return mount_;
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	フル・パスを生成
			@param[in]	name	ファイル名
			@param[out]	dst		生成先（オーバーランに注意）
		 */
		//-----------------------------------------------------------------//
		void make_full_path(const char* name, char* dst) const {
			if(name == nullptr || dst == nullptr) return;
			std::strcpy(dst, current_);
			if(dst[std::strlen(dst)] != '/') {
				std::strcat(dst, "/");
			}
			std::strcat(dst, name);
		}


		//-----------------------------------------------------------------//
		/*!
			@brief	カレント・パスを取得
			@return カレント。パス
		 */
		//-----------------------------------------------------------------//
		const char* get_current() const { return current_; }


		//-----------------------------------------------------------------//
		/*!
			@brief	カードのマウント状態を取得
			@return 「true」ならマウント状態
		 */
		//-----------------------------------------------------------------//
		bool get_mount() const { return mount_; }


		//-----------------------------------------------------------------//
		/*!
			@brief	MMC クラスを参照で返す
			@return MMC クラス
		 */
		//-----------------------------------------------------------------//
		mmc_type& at_mmc() { return mmc_; }
	};
}
