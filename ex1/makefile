CC  = gcc
OBJ = main.o  \
      input.o \
      calcu.o

main: $(OBJ)
	$(CC) -o main $(OBJ)
	./main
main.o: main.c
	$(CC) -c main.c
input.o: input.c
	$(CC) -c input.c
calcu.o: calcu.c
	$(CC) -c calcu.c

.PHONY: clean 
clean:
	rm *.o main

