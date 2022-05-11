SRCS =	push_swap.c			\
		partitions.c		\
		op_swap.c			\
		op_push.c			\
		op_rotate.c			\
		op_reverse_rotate.c	\
		algorithm.c			\
		algorithm_utils.c	\
		algorithm_index.c	\
		algo_three.c		\
		algo_hundred_1.c	\
		algo_hundred_2.c	\

LIBS =	big_boi/libft/libft.a 			\
		big_boi/ft_printf/ft_printf.a	\

NAME = push_swap

OBJS = $(SRCS:.c=.o)

CC = gcc

CFLAGS = -Werror -Wall -Wextra -g

CD_BIG_BOI = cd big_boi && make

RM_BIG_BOI = cd big_boi && make fclean
.c.o : 
	@echo "Compiling: $<"
	@$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	@$(MAKE) -C ./big_boi
	@ $(CC) $(CFLAGS)  $(OBJS) $(LIBS) -o $(NAME) 
	@echo "push_swap done! ;)\n--------------------------------------------\n"

random:
	@$(CC) $(CFLAGS)  $(OBJS) $(LIBS) -o $(NAME) && jot -r 10000 1 750000 > input.txt  | cat -n input.txt | sort -uk2 | sort -n | cut -f2-  | cat > input.txt && head -101 input.txt | xargs ./push_swap

all: $(NAME)

clean:
	@rm -rf $(OBJS)
	@$(RM_BIG_BOI)

fclean: clean
	@rm -f $(NAME)

re: fclean all
