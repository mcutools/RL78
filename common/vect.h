#pragma once
//=====================================================================//
/*!	@file
	@brief	R78 グループ・ベクター関係
    @author 平松邦仁 (hira@rvf-rc45.net)
	@copyright	Copyright (C) 2016 Kunihito Hiramatsu @n
				Released under the MIT license @n
				https://github.com/hirakuni45/RL78/blob/master/LICENSE
*/
//=====================================================================//
#include <stdint.h>

#define INTERRUPT_FUNC __attribute__ ((interrupt))

#ifdef __cplusplus
extern "C" {
#endif
	//-----------------------------------------------------------------//
	/*!
		@brief  無効タスクエントリー（割り込み）
	*/
	//-----------------------------------------------------------------//
	void NULL_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  割り込み無効
	*/
	//-----------------------------------------------------------------//
	inline void di(void) { asm("di"); }


	//-----------------------------------------------------------------//
	/*!
		@brief  割り込み有効
	*/
	//-----------------------------------------------------------------//
	inline void ei(void) { asm("ei"); }


	//-----------------------------------------------------------------//
	/*!
		@brief  UART1-TX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART0_TX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART1-RX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART0_RX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART1-ER 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART0_ER_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART1-TX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART1_TX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART1-RX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART1_RX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART1-ER 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART1_ER_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART2-TX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART2_TX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART2-RX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART2_RX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART2-ER 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART2_ER_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART3-TX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART3_TX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART3-RX 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART3_RX_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  UART3-ER 割り込み
	*/
	//-----------------------------------------------------------------//
	void UART3_ER_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM00 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM00_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM01 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM01_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM02 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM02_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM03 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM03_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  ADC 割り込み
	*/
	//-----------------------------------------------------------------//
	void ADC_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  ITM 割り込み
	*/
	//-----------------------------------------------------------------//
	void ITM_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM04 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM04_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM05 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM05_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM06 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM06_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM07 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM07_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM10 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM10_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM11 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM11_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM12 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM12_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM13 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM13_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM14 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM14_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM15 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM15_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM16 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM16_intr(void) INTERRUPT_FUNC;


	//-----------------------------------------------------------------//
	/*!
		@brief  TM17 割り込み
	*/
	//-----------------------------------------------------------------//
	void TM17_intr(void) INTERRUPT_FUNC;

#ifdef __cplusplus
};
#endif
