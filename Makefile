CC = gcc
NAME = free_snake
LIBS = -lncurses -lm

$(NAME): draw.o body.o
	$(CC) -o $(NAME) draw.o body.o $(LIBS)

draw.o: draw.c include/body.h
body.o: body.c include/body.h

.PHONY: clean
clean:
	rem *.o $(NAME)
