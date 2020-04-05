install: main.o
	gcc -o bin/main main.o

main.o: main.c
	gcc -c -D_POSIX_C_SOURCE=199309L -std=c99 -pedantic -Wall -o main.o -c main.c

install_thread: thread.o
	gcc -pthread -o bin/thread thread.o

thread.o: thread.c
	gcc -c -pedantic -pthread -Wall -o thread.o -c thread.c
