
all : sum_test

sum_test : main.o sum.o
	gcc -o sum_test main.o sum.o

sum.o : sum.c sum.h
	gcc -c -o sum.o sum.c

main.o : main.c sum.h
	gcc -c -o main.o main.c
clean : 
	rm -f sum_test
	rm -f *.o
