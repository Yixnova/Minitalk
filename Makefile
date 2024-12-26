CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -rf

LIBFT = ./libft/libft.a

CLIENT = client
SERVER = server

SRC_C = client.c
OBJ_C = $(SRC_C:%.c=%.o)

SRC_S = server.c
OBJ_S = $(SRC_S:%.c=%.o)

all: $(LIBFT) $(SERVER) $(CLIENT)

$(LIBFT):
	@$(MAKE) -C ./libft

$(SERVER): $(OBJ_S) $(LIBFT)
	@$(CC) $(CFLAGS) $(OBJ_S) $(LIBFT)  -o server

$(CLIENT): $(OBJ_C) $(LIBFT)
	@$(CC) $(CFLAGS) $(OBJ_C) $(LIBFT) -o client

clean:
	@$(MAKE) clean -C ./libft
	@$(RM) $(OBJ_S) $(OBJ_C)

fclean: clean
	@$(MAKE) fclean -C ./libft
	@$(RM) $(SERVER) $(CLIENT)

re: fclean all

.PHONY: all clean fclean re