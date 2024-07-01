NAME_M = push_swap
NAME_B = checker
CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC = mandatory/push_swap.c mandatory/ft_split.c mandatory/parsing.c  mandatory/utils.c \
	mandatory/best_move.c mandatory/free_stack.c mandatory/get_values.c \
	mandatory/list_instructions.c mandatory/push_rotate.c mandatory/reverse_rotate.c \
	mandatory/set_operations.c mandatory/sort_two_three.c mandatory/swap.c
SRCB = bonus/checker_bonus.c bonus/ft_split_bonus.c bonus/parsing_bonus.c  bonus/list_instructions_bonus.c \
	bonus/push_rotate_bonus.c bonus/read_instructions_bonus.c bonus/reverse_rotate_bonus.c \
	bonus/swap_bonus.c bonus/utils_bonus.c \
	bonus/gnl_utils_bonus.c bonus/get_next_line_bonus.c

OBJ = $(SRC:.c=.o)
OBJB = $(SRCB:.c=.o)

all: $(NAME_M)

$(NAME_M): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME_M)

bonus: $(OBJB)
	$(CC) $(CFLAGS) $(OBJB) -o $(NAME_B)

mandatory/%.o: mandatory/%.c mandatory/push_swap.h
	$(CC) $(CFLAGS) -c $< -o $@

bonus/%.o: bonus/%.c bonus/checker_bonus.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(OBJB)

fclean: clean
	rm -f $(NAME_M) $(NAME_B)

re: fclean all

.PHONY: clean
