CC=g++
CFLAGS=-Wall -Werror -g
SRC=src/
OBJ=obj
SRCS=$(wildcard $(SRC)/*.cpp)
OBJS=$(patsubst $(SRC)/%.cpp, $(OBJ)/%.o, $(SRCS))

PROJ_NAME=chess
BIN=bin/$(PROJ_NAME)


all: dir $(BIN)  

dir:
	@mkdir -p obj
	@mkdir -p bin

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

$(OBJ)/%.o: $(SRC)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f bin/* obj/*