.SILENT:

NAME= TRON_Arcade

SRC_FILE=	main.c \
		ft_general.c

AUDIO_FILE= 	ft_general_audio.c \
		ft_splash_audio.c

NETWORK_FILE=

SCREEN_FILE=	ft_general_screen.c \
		ft_splash_screen.c

SRC_PATH= srcs/
AUDIO_PATH= $(SRC_PATH)audio/
NETWORK_PATH= $(SRC_PATH)network/
SCREEN_PATH= $(SRC_PATH)screen/

LIB_PATH= -L /usr/local/lib/
INCL_PATH= -I incls/

SRC= $(addprefix $(SRC_PATH), $(SRC_FILE))
AUDIO= $(addprefix $(AUDIO_PATH), $(AUDIO_FILE))
NETWORK= $(addprefix $(NETWORK_PATH), $(NETWORK_FILE))
SCREEN= $(addprefix $(SCREEN_PATH), $(SCREEN_FILE))

ALL_SRC= $(SRC) $(AUDIO) $(NETWORK) $(SCREEN)

LIB= -lfmod -lncurses -lpanel

FLAGS= -Wall -Wextra -Werror

$(NAME): all

all:
	gcc -o $(NAME) $(FLAGS) $(ALL_SRC) $(INCL_PATH) $(LIB_PATH) $(LIB)

clean:
	rm $(NAME)

fclean: clean

re: fclean all