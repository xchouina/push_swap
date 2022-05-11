NAME = big_boi

# OBJS = $(SRCS:.c=.o)

CC= gcc

CC_FLAGS = -Werror -Wextra -Wall

## CD

CD_LIBFT = cd libft && make

RM_LIBFT = cd libft && make fclean

CD_FT_PRINTF = cd ft_printf && make

RM_FT_PRINTF = cd ft_printf&& make fclean
.c.o :
	@echo "Compiling: $<"
	@$(CC) $(CC_FLAGS) -c $< -o $@

$(NAME): $(OBJS)
	@$(CD_LIBFT)
	@$(CD_FT_PRINTF)

all: $(NAME)

clean:
	@rm -rf $(OBJS)	
	@$(RM_LIBFT)
	@$(RM_FT_PRINTF)

fclean: clean
	@rm -f $(NAME)

re: fclean all