# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpieri <cpieri@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/01 15:43:04 by cpieri            #+#    #+#              #
#    Updated: 2018/12/31 18:52:35 by delay            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libgraph.a

CC		=	g++

CFLAGS	=	-Wall -Wextra -Werror

SRC_PATH=	srcs

OBJ_PATH=	obj

CPPFLAG	=	-Iinclude

DEPS =		Makefile			\
			include/display.hpp	\
			include/utils.hpp	\
			include/libgraph.hpp\
			include/color.hpp	\
			include/vector.hpp	\
			include/bloc.h		\
			include/button.h	\
			include/label.hpp	\
			include/matrix.h

SRCS = 		color.cpp			\
			utils.cpp			\
			bloc.cpp			\
			vector3d.cpp		\
			vector4d.cpp		\
			vector2d.cpp		\
			vector_op.cpp
#display.cpp			\


OBJS	=	$(SRCS:.cpp=.o)

SRC		=	$(addprefix $(SRC_PATH)/,$(SRCS) )

OBJ		=	$(addprefix $(OBJ_PATH)/,$(OBJS) )

.PHONY: all clean fclean re echo

all:		echo $(NAME)

$(NAME): 	$(OBJ)
			@ar rc $(NAME) $(OBJ) ../libft/libft.a
			@ranlib $(NAME)

echo:
			@echo -n Getting libgraph ready

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.cpp $(DEPS)
			@mkdir $(OBJ_PATH) 2> /dev/null || true
			@$(CC) $(CFLAGS) $(CPPFLAG) -o $@ -c $<
			@echo -n .

clean:
			@/bin/rm -f $(OBJ)
			@rmdir $(OBJ_PATH) 2> /dev/null || true

fclean:		clean
			@/bin/rm -f $(NAME)

re:			fclean all
