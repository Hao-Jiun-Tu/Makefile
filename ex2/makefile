CC     = gcc
CFLAGS = -Wall -O2
DEF    = -D _MULTP_
OBJ    = main.o  \
         input.o 

OBJ   += calcu.o

main: $(OBJ)
	$(CC) -o $@ $(OBJ)
	./$@
%.o: %.c
	$(CC) $(CFLAGS) $(DEF) -c $<

.PHONY: clean 
clean:
	rm *.o main

