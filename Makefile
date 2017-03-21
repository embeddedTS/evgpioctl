SRCS=evgpioctl.c evgpio.c
CFLAGS=-mcpu=arm9
CC=gcc
INSTALL=/usr/local/bin/

all: evgpioctl 

evgpioctl:
	$(CC) -o evgpioctl $(SRCS) $(CFLAGS)

install: all
	install -m 4755 evgpioctl $(INSTALL)

clean:
	-rm -f evgpioctl
	-rm -f $(INSTALL)/evgpioctl
