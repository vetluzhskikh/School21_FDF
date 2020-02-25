# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gnelson <gnelson@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/19 22:09:29 by gnelson           #+#    #+#              #
#    Updated: 2020/02/25 20:14:12 by gnelson          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FILES = src/main.c \
		src/matrix.c \
		src/key_press.c \
		src/new.c \
		src/rec_file.c \
		src/brez.c \
		src/close_program.c \

LIB = includes/libft/libft.a
NAME = fdf
OBJ = $(patsubst %.c,%.o,$(FILES))
CFLAGS = -Wall -Wextra -Werror
INC = -I includes -I includes/libft
LIBINC = includes/libft
VPATH = %.h includes includes/libft
VPATH = %.c src

all: $(NAME)

$(NAME): $(OBJ)
	@make -C $(LIBINC) re
	@gcc $(CFLAGS) -L $(LIBINC) -lft $(FILES) $(INC) -o $(NAME) -L /usr/local/lib/ -lmlx -framework OpenGL -framework AppKit
%.o: %.c
	@gcc $(CFLAGS) $(INC) $< -c -o $@

clean:
	@rm -rf $(OBJ)
	@make -C $(LIBINC) clean

fclean: clean
	@rm -rf $(NAME)
	@make -C $(LIBINC) fclean

re: fclean all

.PHONY: all clean fclean re
