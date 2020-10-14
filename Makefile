NAME = libasm.a

SRCS =	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_strdup.s ft_read.s

OBJS = $(SRCS:.s=.o)

%.o	: %.s
	nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f $(OBJS)

try: all
	@touch test
	@echo "Ceci est un test" > test
	gcc -g -I./libasm.h libasm.a main.c -o try_libasm
	./try_libasm

fclean: clean
	rm -f $(NAME)
	rm -f try_libasm
	rm -f test

re: fclean all
