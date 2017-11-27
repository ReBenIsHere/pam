NAME		= pam

cc = gcc

RM		= rm -f
DIR_PAM = /lib/security/pam_crypt_volume.so

DIR_SRC		= ./sources/

SRC		= $(DIR_SRC)main.c

all:		$(NAME)

$(NAME):
	 	$(CXX) -fPIC -fno-stack-protector -c $(SRC) -lpam -lpam_misc

install:
		sudo ld -x --shared -o $(DIR_PAM) main.o

uninstall:
		sudo $(RM) $(DIR_PAM)

check:
	ifneq ("$(wildcard $(PATH_TO_FILE))","")
	FILE_EXISTS = 1
	else
	FILE_EXISTS = 0
	endif

clean:
		$(RM) main.o

fclean:		clean
		$(RM) $(NAME)

re:		fclean all

.PHONY: clean fclean re all
