install: main.o
	gcc -o main main.o

main.o: main.c
	gcc -c -D_POSIX_C_SOURCE=199309L -std=c99 -pedantic -Wall -o main.o -c main.c
