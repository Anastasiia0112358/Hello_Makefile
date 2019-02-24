CC=gcc
CFLAGS=-I.
DEPS = hello.h

.PHONY: clean
.PHONY: build

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: hello.o main.o
	$(CC) -o hello hello.o main.o

build: hello

clean:
	rm -f hello ./*.o
