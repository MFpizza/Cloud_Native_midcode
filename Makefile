CC := gcc
CFLAGS := -Wall -Wextra -g

all: hello

hello: main.o 
	gcc $(CFLAGS) $^ -o $@

%.o: %.c
	gcc $(CFLAGS) -c $< -o $@

clean:
	rm *.o -f
	rm hello