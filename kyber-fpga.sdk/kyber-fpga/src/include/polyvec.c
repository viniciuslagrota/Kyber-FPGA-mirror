#include <stdint.h>
#include "params.h"
#include "poly.h"
#include "polyvec.h"

/*************************************************
* Name:        polyvec_compress
*
* Description: Compress and serialize vector of polynomials
*
* Arguments:   - uint8_t *r: pointer to output byte array
*                            (needs space for KYBER_POLYVECCOMPRESSEDBYTES)
*              - const polyvec *a: pointer to input vector of polynomials
**************************************************/
void polyvec_compress(uint8_t r[KYBER_POLYVECCOMPRESSEDBYTES], const polyvec *a)
{
  unsigned int i,j,k;

#if (KYBER_POLYVECCOMPRESSEDBYTES == (KYBER_K * 352))
  uint16_t t[8];
  for(i=0;i<KYBER_K;i++) {
    for(j=0;j<KYBER_N/8;j++) {
      for(k=0;k<8;k++) {
        t[k]  = a->vec[i].coeffs[8*j+k];
        t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
        t[k]  = ((((uint32_t)t[k] << 11) + KYBER_Q/2)/KYBER_Q) & 0x7ff;
      }

      r[ 0] = (t[0] >>  0);
      r[ 1] = (t[0] >>  8) | (t[1] << 3);
      r[ 2] = (t[1] >>  5) | (t[2] << 6);
      r[ 3] = (t[2] >>  2);
      r[ 4] = (t[2] >> 10) | (t[3] << 1);
      r[ 5] = (t[3] >>  7) | (t[4] << 4);
      r[ 6] = (t[4] >>  4) | (t[5] << 7);
      r[ 7] = (t[5] >>  1);
      r[ 8] = (t[5] >>  9) | (t[6] << 2);
      r[ 9] = (t[6] >>  6) | (t[7] << 5);
      r[10] = (t[7] >>  3);
      r += 11;
    }
  }
#elif (KYBER_POLYVECCOMPRESSEDBYTES == (KYBER_K * 320))
  uint16_t t[4];
  for(i=0;i<KYBER_K;i++) {
    for(j=0;j<KYBER_N/4;j++) {
      for(k=0;k<4;k++) {
        t[k]  = a->vec[i].coeffs[4*j+k];
        t[k] += ((int16_t)t[k] >> 15) & KYBER_Q;
        t[k]  = ((((uint32_t)t[k] << 10) + KYBER_Q/2)/ KYBER_Q) & 0x3ff;
      }

      r[0] = (t[0] >> 0);
      r[1] = (t[0] >> 8) | (t[1] << 2);
      r[2] = (t[1] >> 6) | (t[2] << 4);
      r[3] = (t[2] >> 4) | (t[3] << 6);
      r[4] = (t[3] >> 2);
      r += 5;
    }
  }
#else
#error "KYBER_POLYVECCOMPRESSEDBYTES needs to be in {320*KYBER_K, 352*KYBER_K}"
#endif
}

/*************************************************
* Name:        polyvec_decompress
*
* Description: De-serialize and decompress vector of polynomials;
*              approximate inverse of polyvec_compress
*
* Arguments:   - polyvec *r:       pointer to output vector of polynomials
*              - const uint8_t *a: pointer to input byte array
*                                  (of length KYBER_POLYVECCOMPRESSEDBYTES)
**************************************************/
void polyvec_decompress(polyvec *r, const uint8_t a[KYBER_POLYVECCOMPRESSEDBYTES])
{
  unsigned int i,j,k;

#if (KYBER_POLYVECCOMPRESSEDBYTES == (KYBER_K * 352))
  uint16_t t[8];
  for(i=0;i<KYBER_K;i++) {
    for(j=0;j<KYBER_N/8;j++) {
      t[0] = (a[0] >> 0) | ((uint16_t)a[ 1] << 8);
      t[1] = (a[1] >> 3) | ((uint16_t)a[ 2] << 5);
      t[2] = (a[2] >> 6) | ((uint16_t)a[ 3] << 2) | ((uint16_t)a[4] << 10);
      t[3] = (a[4] >> 1) | ((uint16_t)a[ 5] << 7);
      t[4] = (a[5] >> 4) | ((uint16_t)a[ 6] << 4);
      t[5] = (a[6] >> 7) | ((uint16_t)a[ 7] << 1) | ((uint16_t)a[8] << 9);
      t[6] = (a[8] >> 2) | ((uint16_t)a[ 9] << 6);
      t[7] = (a[9] >> 5) | ((uint16_t)a[10] << 3);
      a += 11;

      for(k=0;k<8;k++)
        r->vec[i].coeffs[8*j+k] = ((uint32_t)(t[k] & 0x7FF)*KYBER_Q + 1024) >> 11;
    }
  }
#elif (KYBER_POLYVECCOMPRESSEDBYTES == (KYBER_K * 320))
  uint16_t t[4];
  for(i=0;i<KYBER_K;i++) {
    for(j=0;j<KYBER_N/4;j++) {
      t[0] = (a[0] >> 0) | ((uint16_t)a[1] << 8);
      t[1] = (a[1] >> 2) | ((uint16_t)a[2] << 6);
      t[2] = (a[2] >> 4) | ((uint16_t)a[3] << 4);
      t[3] = (a[3] >> 6) | ((uint16_t)a[4] << 2);
      a += 5;

      for(k=0;k<4;k++)
        r->vec[i].coeffs[4*j+k] = ((uint32_t)(t[k] & 0x3FF)*KYBER_Q + 512) >> 10;
    }
  }
#else
#error "KYBER_POLYVECCOMPRESSEDBYTES needs to be in {320*KYBER_K, 352*KYBER_K}"
#endif
}

/*************************************************
* Name:        polyvec_tobytes
*
* Description: Serialize vector of polynomials
*
* Arguments:   - uint8_t *r: pointer to output byte array
*                            (needs space for KYBER_POLYVECBYTES)
*              - const polyvec *a: pointer to input vector of polynomials
**************************************************/
void polyvec_tobytes(uint8_t r[KYBER_POLYVECBYTES], const polyvec *a)
{
  unsigned int i;
  for(i=0;i<KYBER_K;i++)
    poly_tobytes(r+i*KYBER_POLYBYTES, &a->vec[i]);
}

/*************************************************
* Name:        polyvec_frombytes
*
* Description: De-serialize vector of polynomials;
*              inverse of polyvec_tobytes
*
* Arguments:   - uint8_t *r:       pointer to output byte array
*              - const polyvec *a: pointer to input vector of polynomials
*                                  (of length KYBER_POLYVECBYTES)
**************************************************/
void polyvec_frombytes(polyvec *r, const uint8_t a[KYBER_POLYVECBYTES])
{
  unsigned int i;
  for(i=0;i<KYBER_K;i++)
    poly_frombytes(&r->vec[i], a+i*KYBER_POLYBYTES);
}

/*************************************************
* Name:        polyvec_ntt
*
* Description: Apply forward NTT to all elements of a vector of polynomials
*
* Arguments:   - polyvec *r: pointer to in/output vector of polynomials
**************************************************/
void polyvec_ntt_sw(polyvec *r)
{
  unsigned int i;
  for(i=0;i<KYBER_K;i++)
    poly_ntt(&r->vec[i]);
}

void polyvec_ntt_hw(polyvec *r)
{
//	memcpy(memoryBram0, (u32 *)r, 1024);
//
//	//Start flag up
//	XGpio_DiscreteWrite(&XGpioNtt, 1, 0x1);
//
//	//Read busy signal
//	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 1);
//	while(u32ReadGpio == 1)
//		u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 1);
//
//	//Start flag down
//	XGpio_DiscreteWrite(&XGpioNtt, 1, 0x0);
//
//	memcpy(r, (poly *)memoryBram0, 1024);

#if KYBER_K == 2
	size_t sLen = 1024;
	size_t sLenWords = 256; //1024/4
#elif KYBER_K == 3
	size_t sLen = 1536;
	size_t sLenWords = 384;
#else
	size_t sLen = 2048;
	size_t sLenWords = 512;
#endif

	memcpy(TxBufferPtr, (u8*)r, sLen);

	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, sLen);

	//Configure RX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) RxBufferPtr, sLen, XAXIDMA_DEVICE_TO_DMA);

	//Configure TX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) TxBufferPtr, sLen, XAXIDMA_DMA_TO_DEVICE);

	while (XAxiDma_Busy(&XAxiDmaPtr, XAXIDMA_DMA_TO_DEVICE)) {
			/* Wait */
	}

	//Start flag up
	XGpio_DiscreteWrite(&XGpioNtt, 1, 0x1);

	//Send length to be read
	XGpio_DiscreteWrite(&XGpioDma, 2, sLenWords); //Number of words, not bytes.

	//Read busy signal
	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 1);
	while(u32ReadGpio == 1)
		u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 1);

	//Start flag down
	XGpio_DiscreteWrite(&XGpioNtt, 1, 0x0);

	//Send signal to initialize packet transmission from DMA to PL
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x1);

	while (XAxiDma_Busy(&XAxiDmaPtr, XAXIDMA_DEVICE_TO_DMA)) {
			/* Wait */
	}

	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, sLen);
	memcpy(r, (polyvec *)RxBufferPtr, sLen);

	//Packet reception end
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x0);

}

void polyvec_ntt(polyvec *r)
{
#if GET_TOTAL_IP_TIME == 1
	if(u32SystemState & POLYVEC_NTT_MASK)
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_ntt_hw(r);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecNttHwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecNttHwIt++;
	}
	else
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_ntt_sw(r);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecNttSwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecNttSwIt++;
	}
#else
	if(u32SystemState & POLYVEC_NTT_MASK)
		polyvec_ntt_hw(r);
	else
		polyvec_ntt_sw(r);
#endif
}

/*************************************************
* Name:        polyvec_invntt_tomont
*
* Description: Apply inverse NTT to all elements of a vector of polynomials
*              and multiply by Montgomery factor 2^16
*
* Arguments:   - polyvec *r: pointer to in/output vector of polynomials
**************************************************/
void polyvec_invntt_tomont_sw(polyvec *r)
{
  unsigned int i;
  for(i=0;i<KYBER_K;i++)
    poly_invntt_tomont(&r->vec[i]);
}

void polyvec_invntt_tomont_hw(polyvec *r)
{
//	memcpy(memoryBram0, (u32 *)r, 1024);
//
//	//Start flag up
//	XGpio_DiscreteWrite(&XGpioNtt, 2, 0x1);
//
//	//Read busy signal
//	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 2);
//	while(u32ReadGpio == 1)
//		u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 2);
//
//	//Start flag down
//	XGpio_DiscreteWrite(&XGpioNtt, 2, 0x0);
//
//	memcpy(r, (poly *)memoryBram0, 1024);

#if KYBER_K == 2
	size_t sLen = 1024;
	size_t sLenWords = 256; //1024/4
#elif KYBER_K == 3
	size_t sLen = 1536;
	size_t sLenWords = 384;
#else
	size_t sLen = 2048;
	size_t sLenWords = 512;
#endif

	memcpy(TxBufferPtr, (u8*)r, sLen);

	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, sLen);

	//Configure RX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) RxBufferPtr, sLen, XAXIDMA_DEVICE_TO_DMA);

	//Configure TX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) TxBufferPtr, sLen, XAXIDMA_DMA_TO_DEVICE);

	while (XAxiDma_Busy(&XAxiDmaPtr,XAXIDMA_DMA_TO_DEVICE)) {
			/* Wait */
	}

	//Start flag up
	XGpio_DiscreteWrite(&XGpioNtt, 2, 0x1);

	//Send length to be read
	XGpio_DiscreteWrite(&XGpioDma, 2, sLenWords); //Number of words, not bytes.

	//Read busy signal
	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 2);
	while(u32ReadGpio == 1)
		u32ReadGpio = XGpio_DiscreteRead(&XGpioNtt, 2);

	//Start flag down
	XGpio_DiscreteWrite(&XGpioNtt, 2, 0x0);

	//Send signal to initialize packet transmission from DMA to PL
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x1);

	while (XAxiDma_Busy(&XAxiDmaPtr, XAXIDMA_DEVICE_TO_DMA)) {
			/* Wait */
	}

	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, sLen);
	memcpy(r, (polyvec *)RxBufferPtr, sLen);

	//Packet reception end
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x0);

}

void polyvec_invntt_tomont(polyvec *r)
{
#if GET_TOTAL_IP_TIME == 1
	if(u32SystemState & POLYVEC_NTT_MASK)
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_invntt_tomont_hw(r);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecInvnttHwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecInvnttHwIt++;
	}
	else
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_invntt_tomont_sw(r);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecInvnttSwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecInvnttSwIt++;
	}
#else
	if(u32SystemState & POLYVEC_INVNTT_MASK)
		polyvec_invntt_tomont_hw(r);
	else
		polyvec_invntt_tomont_sw(r);
#endif
}


/*************************************************
* Name:        polyvec_basemul_acc_montgomery
*
* Description: Multiply elements of a and b in NTT domain, accumulate into r,
*              and multiply by 2^-16.
*
* Arguments: - poly *r: pointer to output polynomial
*            - const polyvec *a: pointer to first input vector of polynomials
*            - const polyvec *b: pointer to second input vector of polynomials
**************************************************/
void polyvec_basemul_acc_montgomery_sw(poly *r, const polyvec *a, const polyvec *b)
{
  unsigned int i;
  poly t;

  poly_basemul_montgomery(r, &a->vec[0], &b->vec[0]);
  for(i=1;i<KYBER_K;i++) {
    poly_basemul_montgomery(&t, &a->vec[i], &b->vec[i]);
    poly_add(r, r, &t);
  }

  poly_reduce(r);
}

void polyvec_basemul_acc_montgomery_hw(poly *r, const polyvec *a, const polyvec *b)
{
//#if  KYBER_K == 2
//	memcpy(memoryBram0, (u32 *)a, 1024);
//	memcpy(&memoryBram0[256], (u32 *)b, 1024);
//#elif KYBER_K == 3
//	memcpy(memoryBram0, (u32 *)a, 1536);
//	memcpy(memoryBram0 + 1536, (u32 *)b, 1536);
//#else
//	memcpy(memoryBram0, (u32 *)a, 2048);
//	memcpy(memoryBram0 + 2048, (u32 *)b, 2048);
//#endif
//
//	//Start flag up
//	XGpio_DiscreteWrite(&XGpioAccMontKeccak, 1, 0x1);
//
//	//Read busy signal
//	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioAccMontKeccak, 1);
//	while(u32ReadGpio == 1)
//		u32ReadGpio = XGpio_DiscreteRead(&XGpioAccMontKeccak, 1);
//
//	//Start flag down
//	XGpio_DiscreteWrite(&XGpioAccMontKeccak, 1, 0x0);
//
//	memcpy(r, (poly *)memoryBram1, 512);

#if  KYBER_K == 2
	size_t sOneLen = 1024;
	size_t sTotalLen = 2048;
#elif KYBER_K == 3
	size_t sOneLen = 1536;
	size_t sTotalLen = 3072;
#else
	size_t sOneLen = 2048;
	size_t sTotalLen = 4096;
#endif

	memcpy(TxBufferPtr, (u8*)a, sOneLen);
	memcpy(TxBufferPtr + sOneLen, (u8*)b, sOneLen);

	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, sTotalLen);

	//Configure RX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) RxBufferPtr, 512, XAXIDMA_DEVICE_TO_DMA);

	//Configure TX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) TxBufferPtr, sTotalLen, XAXIDMA_DMA_TO_DEVICE);

	while (XAxiDma_Busy(&XAxiDmaPtr,XAXIDMA_DMA_TO_DEVICE)) {
			/* Wait */
	}

	//Start flag up
	XGpio_DiscreteWrite(&XGpioAccMontKeccak, 1, 0x1);

	//Send length to be read
	XGpio_DiscreteWrite(&XGpioDma, 2, 128); //Number of words of 32 bits, not bytes.

	//Read busy signal
	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioAccMontKeccak, 1);
	while(u32ReadGpio == 1)
		u32ReadGpio = XGpio_DiscreteRead(&XGpioAccMontKeccak, 1);

	//Send signal to initialize packet transmission from DMA to PL
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x1);

	while (XAxiDma_Busy(&XAxiDmaPtr,XAXIDMA_DEVICE_TO_DMA)) {
			/* Wait */
	}

	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, 512);
	memcpy(r, (poly *)RxBufferPtr, 512);

	//Packet reception end
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x0);

	//Start flag down
	XGpio_DiscreteWrite(&XGpioAccMontKeccak, 1, 0x0);
}

void polyvec_basemul_acc_montgomery(poly *r, const polyvec *a, const polyvec *b)
{
#if GET_TOTAL_IP_TIME == 1
	if(u32SystemState & POLYVEC_BASEMUL_MASK)
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_basemul_acc_montgomery_hw(r, a, b);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecBasemulAccMontHwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecBasemulAccMontHwIt++;
	}
	else
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_basemul_acc_montgomery_sw(r, a, b);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecBasemulAccMontSwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecBasemulAccMontSwIt++;
	}
#else
	if(u32SystemState & POLYVEC_BASEMUL_MASK)
		polyvec_basemul_acc_montgomery_hw(r, a, b);
	else
		polyvec_basemul_acc_montgomery_sw(r, a, b);
#endif
}

/*************************************************
* Name:        polyvec_reduce
*
* Description: Applies Barrett reduction to each coefficient
*              of each element of a vector of polynomials;
*              for details of the Barrett reduction see comments in reduce.c
*
* Arguments:   - polyvec *r: pointer to input/output polynomial
**************************************************/
void polyvec_reduce_sw(polyvec *r)
{
  unsigned int i;
  for(i=0;i<KYBER_K;i++)
    poly_reduce(&r->vec[i]);
}

void polyvec_reduce_hw(polyvec *r)
{
//	memcpy(memoryBram0, (u32 *)r, 1024);
//
//	//Start flag up
//	XGpio_DiscreteWrite(&XGpioTomontAndReduce, 2, 0x1);
//
//	//Read busy signal
//	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioTomontAndReduce, 2);
//	while(u32ReadGpio == 1)
//		u32ReadGpio = XGpio_DiscreteRead(&XGpioTomontAndReduce, 2);
//
//	//Start flag down
//	XGpio_DiscreteWrite(&XGpioTomontAndReduce, 2, 0x0);
//
//	memcpy(r, (polyvec *)memoryBram1, 1024);

#if KYBER_K == 2
	size_t sLen = 1024;
	size_t sLenWords = 256; //1024/4
#elif KYBER_K == 3
	size_t sLen = 1536;
	size_t sLenWords = 384;
#else
	size_t sLen = 2048;
	size_t sLenWords = 512;
#endif

	memcpy(TxBufferPtr, (u8*)r, sLen);

	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, sLen);

	//Configure RX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) RxBufferPtr, sLen, XAXIDMA_DEVICE_TO_DMA);

	//Configure TX
	XAxiDma_SimpleTransfer(&XAxiDmaPtr,(UINTPTR) TxBufferPtr, sLen, XAXIDMA_DMA_TO_DEVICE);

	while (XAxiDma_Busy(&XAxiDmaPtr,XAXIDMA_DMA_TO_DEVICE)) {
			/* Wait */
	}

	//Start flag up
	XGpio_DiscreteWrite(&XGpioTomontAndReduce, 2, 0x1);

	//Send length to be read
	XGpio_DiscreteWrite(&XGpioDma, 2, sLenWords); //Number of words, not bytes.

	//Read busy signal
	u32 u32ReadGpio = XGpio_DiscreteRead(&XGpioTomontAndReduce, 2);
	while(u32ReadGpio == 1)
		u32ReadGpio = XGpio_DiscreteRead(&XGpioTomontAndReduce, 2);

	//Send signal to initialize packet transmission from DMA to PL
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x1);

	while (XAxiDma_Busy(&XAxiDmaPtr, XAXIDMA_DEVICE_TO_DMA)) {
			/* Wait */
	}

	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, sLen);
	memcpy(r, (polyvec *)RxBufferPtr, sLen);

	//Packet reception end
	XGpio_DiscreteWrite(&XGpioDma, 1, 0x0);

	//Start flag down
	XGpio_DiscreteWrite(&XGpioTomontAndReduce, 2, 0x0);
}

void polyvec_reduce(polyvec *r)
{
#if GET_TOTAL_IP_TIME == 1
	if(u32SystemState & POLYVEC_REDUCE_MASK)
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_reduce_hw(r);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecReduceHwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecReduceHwIt++;
	}
	else
	{
		resetTimer(&XGpioGlobalTimer, 1);
		startTimer(&XGpioGlobalTimer, 1);
		polyvec_reduce_sw(r);
		stopTimer(&XGpioGlobalTimer, 1);
		u32PolyvecReduceSwTime += getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
		u32PolyvecReduceSwIt++;
	}
#else
	if(u32SystemState & POLYVEC_REDUCE_MASK)
		polyvec_reduce_hw(r);
	else
		polyvec_reduce_sw(r);
#endif

}

/*************************************************
* Name:        polyvec_add
*
* Description: Add vectors of polynomials
*
* Arguments: - polyvec *r: pointer to output vector of polynomials
*            - const polyvec *a: pointer to first input vector of polynomials
*            - const polyvec *b: pointer to second input vector of polynomials
**************************************************/
void polyvec_add(polyvec *r, const polyvec *a, const polyvec *b)
{
  unsigned int i;
  for(i=0;i<KYBER_K;i++)
    poly_add(&r->vec[i], &a->vec[i], &b->vec[i]);
}
