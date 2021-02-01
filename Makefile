IDIR =/usr/include/libftdi1/
CFLAGS=-I$(IDIR)
LDFLAGS ?= -lftdi1 -lusb
PACKAGES = ftdi-eeprom-tool

all: ${PACKAGES}

ftdi-eeprom-tool: eeprom_ftdi.c
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

clean:
	rm -f $(PACKAGES)
