# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

CFLAGS += $(EXTRA_CFLAGS)

CFLAGS +=       \
	-I$(O)      \
	-I$(NP_INC) \
	-I$(OE_INC)

CFLAGS += -DLINUX -DOE_USE_OPTEE

libdirs += $(AR_O)

libnames += oeenclave
libnames += oesocket_enc
libnames += oestdio_enc

srcs-y += ../OETestTA.c
srcs-y += ../oetests_enclave.c

srcs-y += $(GEN)
