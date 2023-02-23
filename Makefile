# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zel-bagh <zel-bagh@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/14 14:14:24 by zel-bagh          #+#    #+#              #
#    Updated: 2021/04/15 12:25:04 by zel-bagh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS =	ft_strcmp.s\
		ft_strlen.s\
		ft_write.s\
		ft_read.s\
		ft_strcpy.s\
		ft_strdup.s

all :$(NAME)

$(NAME): $(SRCS)
	nasm -f macho64 ft_strcmp.s
	nasm -f macho64 ft_strlen.s
	nasm -f macho64 ft_write.s
	nasm -f macho64 ft_read.s
	nasm -f macho64 ft_strcpy.s
	nasm -f macho64 ft_strdup.s
	ar rc $(NAME) *.o
	
clean :
	rm -rf *.o 

fclean : clean
	rm -rf $(NAME)

re : fclean all