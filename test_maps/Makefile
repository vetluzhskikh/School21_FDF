# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gnelson <gnelson@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/19 22:09:29 by vabraham          #+#    #+#              #
#    Updated: 2020/02/22 14:15:28 by gnelson          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


FILES =	src/main.c \
		src/x.c \
		src/key_press.c \
		src/new.c \
		src/record.c \
		src/draw.c \

LIB = includes/libft/libft.a
NAME = fdf
OBJ = $(patsubst %.c,%.o,$(FILES))
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	@make -C includes/libft re
	@gcc $(CFLAGS) -L includes/libft -lft $(FILES) -I includes/libft -I src/fdf.h -o $(NAME) -L /usr/local/lib/ -lmlx -framework OpenGL -framework AppKit
%.o: %.c
	@gcc $(CFLAGS) -I src/fdf.h $< -c -o $@

clean:
	@rm -rf $(OBJ)
	@make -C includes/libft clean

fclean: clean
	@rm -rf $(NAME)
	@make -C includes/libft fclean

re: fclean all

.PHONY: all clean fclean re
