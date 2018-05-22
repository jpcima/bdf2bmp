
CC = gcc
CFLAGS = -m32 -O2 -g
LDFLAGS = -m32

all: bdf2bmp

clean:
	rm -f bdf2bmp bdf2bmp.o

bdf2bmp: bdf2bmp.o
	$(CC) $(LDFLAGS) -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
