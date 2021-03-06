#pragma once
//=====================================================================//
/*!	@file
	@brief	RL78/G13 グループ・シリアル・インターフェース IICA 定義
    @author 平松邦仁 (hira@rvf-rc45.net)
	@copyright	Copyright (C) 2016, 2017 Kunihito Hiramatsu @n
				Released under the MIT license @n
				https://github.com/hirakuni45/RL78/blob/master/LICENSE
*/
//=====================================================================//
#include "common/io_utils.hpp"
#include "G13/peripheral.hpp"

namespace device {

	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
	/*!
		@brief  シリアル・インターフェース IICA クラス
		@param[in]	PER		ペリフェラル型
		@param[in]	UOFS	ユニット・オフセット（0x00、0x08）
	*/
	//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
	template <peripheral PER, uint32_t UOFS>
	struct iica_t {

		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  IICAシフト・レジスタ（IICA）
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		static rw8_t<0xFFF50 + (UOFS / 2)> IICA;


		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  スレーブ・アドレス・レジスタ（SVA）
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		static rw8_t<0xF0234 + UOFS + (UOFS / 4)> SVA;


		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  コントロール・レジスタ０（IICCTL0）
			@param[in]	T	アクセス・クラス
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		template <class T>
		struct iicctl0_t : public T {
			using T::operator =;
			using T::operator ();
			using T::operator |=;
			using T::operator &=;

			bit_rw_t<T, bitpos::B7> IICE;  ///< I2C の動作許可
			bit_rw_t<T, bitpos::B6> LREL;  ///< 通信退避
			bit_rw_t<T, bitpos::B5> WREL;  ///< ウエイト解除
			bit_rw_t<T, bitpos::B4> SPIE;  ///< ストップ・コンディション検出による割り込み要求発生の許可／禁止
			bit_rw_t<T, bitpos::B3> WTIM;  ///< ウエイトおよび割り込み要求発生の制御
			bit_rw_t<T, bitpos::B2> ACKE;  ///< アクノリッジ制御
			bit_rw_t<T, bitpos::B1> STT;   ///< スタート・コンディション・トリガ
			bit_rw_t<T, bitpos::B0> SPT;   ///< ストップ・コンディション・トリガ
		};
		static iicctl0_t< rw8_t<0xF0230 + UOFS> > IICCTL0;


		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  ステータス・レジスタ（IICS）
			@param[in]	T	アクセス・クラス
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		template <class T>
		struct iics_t : public T {
			using T::operator =;
			using T::operator ();
			using T::operator |=;
			using T::operator &=;

			bit_rw_t<T, bitpos::B7> MSTS;  ///< マスタ状態確認フラグ
			bit_rw_t<T, bitpos::B6> ALD;   ///< アービトレーション負け検出
			bit_rw_t<T, bitpos::B5> EXC;   ///< 拡張コード受信検出
			bit_rw_t<T, bitpos::B4> COI;   ///< アドレス一致検出
			bit_rw_t<T, bitpos::B3> TRC;   ///< 送信／受信状態検出
			bit_rw_t<T, bitpos::B2> ACKD;  ///< アクノリッジ（ACK）検出
			bit_rw_t<T, bitpos::B1> STD;   ///< スタート・コンディション検出
			bit_rw_t<T, bitpos::B0> SPD;   ///< ストップ・コンディション検出
		};
		static iics_t< rw8_t<0xFFF51 + (UOFS / 2)> > IICS;


		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  フラグ・レジスタ（IICF）
			@param[in]	T	アクセス・クラス
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		template <class T>
		struct iicf_t : public T {
			using T::operator =;
			using T::operator ();
			using T::operator |=;
			using T::operator &=;

			bit_rw_t<T, bitpos::B7> STCF;    ///< STTnクリア・フラグ
			bit_rw_t<T, bitpos::B6> IICBSY;  ///< I2C バス状態フラグ
			bit_rw_t<T, bitpos::B1> STCEN;   ///< 初期スタート許可トリガ
			bit_rw_t<T, bitpos::B0> IICRSV;  ///< 通信予約機能禁止ビット
		};
		static iicf_t< rw8_t<0xFFF52 + (UOFS / 2)> > IICF;


		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  コントロール・レジスタ１（IICCTL1）
			@param[in]	T	アクセス・クラス
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		template <class T>
		struct iicctl1_t : public T {
			using T::operator =;
			using T::operator ();
			using T::operator |=;
			using T::operator &=;

			bit_rw_t<T, bitpos::B7> WUP;  ///< アドレス一致ウエイク・アップの制御
			bit_rw_t<T, bitpos::B5> CLD;  ///< SCLAn端子のレベル検出（IICEn = 1のときのみ有効）
			bit_rw_t<T, bitpos::B4> DAD;  ///< SDAAn端子のレベル検出（IICEn = 1のときのみ有効）
			bit_rw_t<T, bitpos::B3> SMC;  ///< 動作モードの切り替え
			bit_rw_t<T, bitpos::B2> DFC;  ///< デジタル・フィルタの動作の制御
			bit_rw_t<T, bitpos::B0> PRS;  ///< IICA動作クロック（f MCK ）の制御
		};
		static iicctl1_t< rw8_t<0xF0231 + UOFS> > IICCTL1;


		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  ロウ・レベル幅設定レジスタ（IICWL）
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		static rw8_t<0xF0232 - (UOFS * 64) + UOFS> IICWL;


		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		/*!
			@brief  ハイ・レベル幅設定レジスタ（IICWH）
		*/
		//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++//
		static rw8_t<0xF0233 - (UOFS * 64) + UOFS> IICWH;


        //-----------------------------------------------------------------//
        /*!
            @brief  ユニット番号を取得
			@return 「０」又は「１」
        */
        //-----------------------------------------------------------------//
		static uint8_t get_unit_no() { return UOFS / 0x08; }


		//-------------------------------------------------------------//
		/*!
			@brief  ペリフェラル種別を取得
			@return ペリフェラル種別
		*/
		//-------------------------------------------------------------//
		static peripheral get_peripheral() { return PER; }
	};

	typedef iica_t<peripheral::IICA0, 0x00> IICA0;
	typedef iica_t<peripheral::IICA1, 0x08> IICA1;
}
