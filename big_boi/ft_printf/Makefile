SRCS = 	ft_printf.c \
		ft_printf_c-s.c \
		ft_printf_d-i-u.c \
		ft_printf_x-X.c \
		ft_printf_p.c \

NAME = ft_printf.a

OBJS = $(SRCS:.c=.o)

CC = gcc

CC_FLAGS = -Werror -Wall -Wextra

.c.o :
	@echo "Compiling: $<"
	@$(CC) $(CC_FLAGS) -c $< -o $@

$(NAME): $(OBJS)
	@ar rcs $(NAME) $(OBJS)
	@echo "ft_printf done!"

all: $(NAME)

clean:
	@rm -rf $(OBJS) 

fclean: clean
	@rm -f $(NAME)

re: fclean all
