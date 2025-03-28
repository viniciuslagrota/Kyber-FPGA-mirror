/*
 * test_kem.c

 *
 *  Created on: 5 de fev de 2021
 *      Author: vinicius
 */

#include "test_kem.h"
#include "kem.h"
#include "randombytes.h"
//#include "ds_benchmark.h"

uint32_t start_crypto_kem_keypair(unsigned char * pk, unsigned char * sk)
{
#if GET_GLOBAL_TIME == 1
	resetTimer(&XGpioGlobalTimer, 1);
	startTimer(&XGpioGlobalTimer, 1);
	crypto_kem_keypair(pk, sk);
	stopTimer(&XGpioGlobalTimer, 1);
	return getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
#else
	return crypto_kem_keypair(pk, sk);
#endif
}

uint32_t start_crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk)
{
#if GET_GLOBAL_TIME == 1
	resetTimer(&XGpioGlobalTimer, 1);
	startTimer(&XGpioGlobalTimer, 1);
	crypto_kem_enc(ct, ss, pk);
	stopTimer(&XGpioGlobalTimer, 1);
	return getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
#else
	return crypto_kem_enc(ct, ss, pk);
#endif
}

uint32_t start_crypto_kem_dec(unsigned char *ss, const unsigned char *ct, const unsigned char *sk)
{
#if GET_GLOBAL_TIME == 1
	resetTimer(&XGpioGlobalTimer, 1);
	startTimer(&XGpioGlobalTimer, 1);
	crypto_kem_dec(ss, ct, sk);
	stopTimer(&XGpioGlobalTimer, 1);
	return getTimer(&XGpioGlobalTimer, 1) * HW_CLOCK_PERIOD; //ticks to ns
#else
	return crypto_kem_dec(ss, ct, sk);
#endif
}

int kem_test(const char *name, int iterations)
{
	//init keys
	uint8_t pk[CRYPTO_PUBLICKEYBYTES];
	uint8_t sk[CRYPTO_SECRETKEYBYTES];
	uint8_t ct[CRYPTO_CIPHERTEXTBYTES];
	uint8_t key_a[CRYPTO_BYTES];
	uint8_t key_b[CRYPTO_BYTES];

	//timer variables
#if GET_GLOBAL_TIME == 1
	uint32_t ui32TimeKeypairSw = 0, ui32TimeEncSw = 0, ui32TimeDecSw = 0, ui32TimeTotalSw = 0;
	uint32_t ui32Integer[4], ui32Fraction[4];
#endif

	print_debug(DEBUG_TEST_KEM, "\n");
	print_debug(DEBUG_TEST_KEM, "=============================================================================================================================\n");
	print_debug(DEBUG_TEST_KEM, "Testing correctness of key encapsulation mechanism (KEM), system %s, tests for %d iterations\n", name, iterations);
	print_debug(DEBUG_TEST_KEM, "=============================================================================================================================\n");

#if GET_GLOBAL_TIME == 1
	ui32TimeKeypairSw = start_crypto_kem_keypair(pk, sk);
	ui32TimeEncSw = start_crypto_kem_enc(ct, key_b, pk);
	ui32TimeDecSw = start_crypto_kem_dec(key_a, ct, sk);
#else
	start_crypto_kem_keypair(pk, sk);
	start_crypto_kem_enc(ct, key_b, pk);
	start_crypto_kem_dec(key_a, ct, sk);
#endif

#if GET_GLOBAL_TIME == 1
	ui32TimeTotalSw = ui32TimeKeypairSw + ui32TimeEncSw + ui32TimeDecSw;
	floatToIntegers((double)ui32TimeKeypairSw/1000000, 	&ui32Integer[0], &ui32Fraction[0]);
	floatToIntegers((double)ui32TimeEncSw/1000000, 		&ui32Integer[1], &ui32Fraction[1]);
	floatToIntegers((double)ui32TimeDecSw/1000000, 		&ui32Integer[2], &ui32Fraction[2]);
	floatToIntegers((double)ui32TimeTotalSw/1000000, 	&ui32Integer[3], &ui32Fraction[3]);

	print_debug(DEBUG_TEST_KEM, "[TEST_KEM] Total time is %lu ns or %lu.%03lu ms (%lu.%03lu/%lu.%03lu/%lu.%03lu) (including function call)\n", ui32TimeTotalSw, ui32Integer[3], ui32Fraction[3], ui32Integer[0], ui32Fraction[0], ui32Integer[1], ui32Fraction[1], ui32Integer[2], ui32Fraction[2]);
#endif

	if (memcmp(key_b, key_a, CRYPTO_BYTES) != 0) {
		print_debug(DEBUG_ERROR, "[TEST_KEM] Shared keys ERROR!\n");
		return false;
	}

	return true;
}
