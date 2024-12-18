NAME = ft_printf.a

FLAG = -Wall -Wextra -Werror

SRC = ft_print_hex.c  ft_print_ptr.c ft_print_unsigned.c ft_print_helpers.c ft_printf.c

OBJ = $(SRC:.c=.o)


$(NAME) : 
	gcc $(FLAG) -c $(SRC)
	ar rc $(NAME) $(OBJ)

all : $(NAME)

clean : 
	/bin/rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all

run : re
	gcc $(FLAG) main.c ft_printf.a
	make fclean
	clear
	./a.out

push : 
	git add .
	git commit -m "To infinity and beyond"
	git push

.PHONY : all clean fclean re 	






	