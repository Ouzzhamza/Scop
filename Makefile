# Set an executable name of the project
NAME = scop

# Defines compiler flags # Ignores warnings about deprecated functions # Ignores warnings about redefined macros # Ignores warnings about C++11 extensions # -Wno-c++11-extensions
CFLAGS = -Wno-deprecated-declarations -Wno-macro-redefined -Wno-c++11-extensions -std=c++11

# Specifies the GLFW library and include path for compilation
GLFW = -I/usr/include/GLFW -L/usr/lib/x86_64-linux-gnu -lglfw 

GLAD = glad.o
GLADLIB = gcc -c src/includes/glad/glad.c -Isrc/includes

EXEC = ./scop

REBUILD = make re
RM		= rm -rf
CC		= c++
SRC_DIR = src/
OBJ_DIR = objects/

SRC = scop

SRCS	= $(addprefix $(SRC_DIR), $(addsuffix .cpp, $(SRC)))
OBJS	= $(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC)))

all: $(NAME)

$(NAME): $(OBJS)
	@echo "$(YELLOW)Compiling..$(COLOR_END)"
	@$(GLADLIB)
	@$(CC) $(CFLAGS) $(OBJS) $(GLFW) $(GLAD) -o $(NAME)
	@echo "$(GREEN)$(NAME) has been created$(COLOR_END)"

$(OBJ_DIR)%.o: $(SRC_DIR)%.cpp
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@echo "$(YELLOW)Cleaning...$(COLOR_END)"
	@$(RM) $(OBJ_DIR)
	@echo "$(GREEN)Cleaning done.$(COLOR_END)"


fclean: clean
	@echo "$(YELLOW)Cleaning everything...$(COLOR_END)"
	@$(RM) $(NAME) home_shrubbery
	@echo "$(GREEN)Cleaning done.$(COLOR_END)"

re:
	@echo "$(YELLOW)Recompiling...$(COLOR_END)"
	@make fclean
	@rm -rf ${OBJ_DIR}
	@make all
	@echo "$(GREEN)The project has been recompiled.$(COLOR_END)"



#! colors
COLOR_END = \033[0;39m
CYAN3 = \033[1;4;96m
YELLOW = \033[1;33m
PURPLE = \033[1;35m
BWhite = \033[1;37m
RED = \033[1;91m
GREEN = \033[1;92m
CYAN2 = \x1B[1;36m
CYAN = \033[1;96m