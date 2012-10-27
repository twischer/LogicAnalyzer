#include <avr/io.h>
#include "SerialReader_config.h"

; Contains the collected data
; A pointer to this section will be returned
.comm data, SERIAL_READER_DATA_LENGTH

.global SerialReader_read
.func SerialReader_read
SerialReader_read:
    push r0
    push r1
    push r2
    push r3
    push r4
    push r5
    push r6
    push r7
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    push r16
    push r17
    push r18
    push r19
    push r20
    push r21
    push r22
    push r23
    ; r24 and r25 are the return value and have not to be back upped
    push r26
    push r27
    push r28
    push r29
    push r30
    push r31
    ; set the pull up for the input pin
    ldi r16, (1 << SERIAL_READER_PINNR)
    out _SFR_IO_ADDR(SERIAL_READER_PORT), r16
    ; clear all registers which are used for the data collection
    eor r0, r0
    eor r1, r1
    eor r2, r2
    eor r3, r3
    eor r4, r4
    eor r5, r5
    eor r6, r6
    eor r7, r7
    eor r8, r8
    eor r9, r9
    eor r10, r10
    eor r11, r11
    eor r12, r12
    eor r13, r13
    eor r14, r14
    eor r15, r15
    eor r16, r16
    eor r17, r17
    eor r18, r18
    eor r19, r19
    eor r20, r20
    eor r21, r21
    eor r22, r22
    eor r23, r23
    eor r24, r24
    eor r25, r25
    eor r26, r26
    eor r27, r27
    eor r28, r28
    eor r29, r29
    eor r30, r30
    eor r31, r31
    ; Set the T bit (it is used by the bld command)
    set
    ; collect the data in r0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r0, 7
    ; collect the data in r1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r1, 7
    ; collect the data in r2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r2, 7
    ; collect the data in r3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r3, 7
    ; collect the data in r4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r4, 7
    ; collect the data in r5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r5, 7
    ; collect the data in r6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r6, 7
    ; collect the data in r7
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r7, 7
    ; collect the data in r8
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r8, 7
    ; collect the data in r9
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r9, 7
    ; collect the data in r10
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r10, 7
    ; collect the data in r11
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r11, 7
    ; collect the data in r12
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r12, 7
    ; collect the data in r13
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r13, 7
    ; collect the data in r14
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r14, 7
    ; collect the data in r15
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r15, 7
    ; collect the data in r16
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r16, 7
    ; collect the data in r17
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r17, 7
    ; collect the data in r18
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r18, 7
    ; collect the data in r19
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r19, 7
    ; collect the data in r20
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r20, 7
    ; collect the data in r21
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r21, 7
    ; collect the data in r22
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r22, 7
    ; collect the data in r23
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r23, 7
    ; collect the data in r24
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r24, 7
    ; collect the data in r25
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r25, 7
    ; collect the data in r26
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r26, 7
    ; collect the data in r27
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r27, 7
    ; collect the data in r28
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r28, 7
    ; collect the data in r29
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r29, 7
    ; collect the data in r30
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r30, 7
    ; collect the data in r31
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 0
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 1
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 2
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 3
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 4
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 5
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 6
    sbic _SFR_IO_ADDR(SERIAL_READER_PIN), SERIAL_READER_PINNR
    bld r31, 7
    ; save firstly r29 and r28 because it is the Y register and has to be used
    sts (data + 28), r28
    sts (data + 29), r29
    ; save the collected data in the ram
    ldi YL, lo8(data)
    ldi YH, hi8(data)
    std Y+0, r0
    std Y+1, r1
    std Y+2, r2
    std Y+3, r3
    std Y+4, r4
    std Y+5, r5
    std Y+6, r6
    std Y+7, r7
    std Y+8, r8
    std Y+9, r9
    std Y+10, r10
    std Y+11, r11
    std Y+12, r12
    std Y+13, r13
    std Y+14, r14
    std Y+15, r15
    std Y+16, r16
    std Y+17, r17
    std Y+18, r18
    std Y+19, r19
    std Y+20, r20
    std Y+21, r21
    std Y+22, r22
    std Y+23, r23
    std Y+24, r24
    std Y+25, r25
    std Y+26, r26
    std Y+27, r27
    ; the values of r28 and r29 was already saved
    std Y+30, r30
    std Y+31, r31
    ; copy pointer to data section to r24:r24
    ; this is the return value
    movw r24, r28
    ; restore the register contants
    pop r31
    pop r30
    pop r29
    pop r28
    pop r27
    pop r26
    ; r24 and r25 are the return value and have not to be back upped
    pop r23
    pop r22
    pop r21
    pop r20
    pop r19
    pop r18
    pop r17
    pop r16
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    pop r2
    pop r1
    pop r0
    ret
.endfunc

