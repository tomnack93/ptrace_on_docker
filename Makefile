install: main.o
	gcc -o bin/main lib/main.o

main.o: src/main.c
	gcc -c -D_POSIX_C_SOURCE=199309L -std=c99 -pedantic -Wall -o lib/main.o -c src/main.c

install_thread: thread.o
	gcc -pthread -o bin/thread lib/thread.o

thread.o: src/thread.c
	gcc -c -pedantic -pthread -Wall -o lib/thread.o -c src/thread.c

install_hello: hello.o
	ld -o bin/hello lib/hello.o

hello.o: src/hello.asm
	nasm -f elf64 src/hello.asm -o lib/hello.o

install_hello_c: hello_c.o
	gcc -o bin/hello_c lib/hello_c.o

hello_c.o: src/hello_c.c
	gcc -c -D_POSIX_C_SOURCE=199309L -std=c99 -pedantic -Wall -o lib/hello_c.o -c src/hello_c.c

clean: 
	rm -f bin/* lib/*
