/*
 * main.c
 *
 *  Created on: 22.10.2012
 *      Author: timo
 */
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <avr/io.h>
#include "UART.h"
#include "SerialReader.h"

int main(void) {
	UART_init();

	printf("Logic Analyzer v0.1\n");
	printf("Sample rate: %ld Samples/sec\n\n", SERIAL_READER_SAMPLE_RATE);

	while (true) {

		printf("Sampling running ...\n");
		uint8_t* data = SerialReader_read();
		printf("Done.\n\n");

		printf("Hex dump:\n");
		for (int i = 0; i < SERIAL_READER_DATA_LENGTH / 2; i++)
			printf("%02x ", i);
		printf("\n");

		for (int i = 0; i < SERIAL_READER_DATA_LENGTH / 2 * 3; i++)
			printf("-");
		printf("\n");

		for (int i = 0; i <= 1; i++) {
			for (int j = 0; j < SERIAL_READER_DATA_LENGTH / 2; j++)
				printf("%02x ", data[i * 16 + j]);
			printf("\n");
		}
		printf("\n");

		printf("Bin dump:\n");
		for (int i = 0; i < SERIAL_READER_DATA_LENGTH; i++) {
			for (int j = 0; j < 8; j++) {
				const char* bitString = (data[i] & (1 << j)) ? "1" : "0";
				printf(bitString);
			}
		}
		printf("\n\n");

		printf("Press any key to run a new sampling.\n");
		getch();

	}

	return 0;
}

