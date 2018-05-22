
CC = gcc
CFLAGS = -O2 -g
LDFLAGS =

all: bdf2bmp

clean:
	rm -f bdf2bmp bdf2bmp.o

bdf2bmp: bdf2bmp.o
	$(CC) $(LDFLAGS) -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
