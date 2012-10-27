/*
 * SerialReader_config.h
 *
 *  Created on: 27.10.2012
 *      Author: timo
 */

#ifndef SERIALREADER_CONFIG_H_
#define SERIALREADER_CONFIG_H_

#define SERIAL_READER_PIN   		PINA
#define SERIAL_READER_PORT   		PORTA
#define SERIAL_READER_PINNR 		PINA0

/**
 * This parameter describes the byte length of the data array which will be by
 * SerialReader_read returned.
 * It is not configurable because of the static assembler code.
 */
#define SERIAL_READER_DATA_LENGTH	32

#define SERIAL_READER_SAMPLE_RATE	F_CPU/2


#endif /* SERIALREADER_CONFIG_H_ */
