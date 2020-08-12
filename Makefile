PROJ:=tetris
SRC:=$(wildcard *.c)

.PHONY: all clean 

all: $(PROJ)

$(PROJ): $(SRC)
	@gcc $(SRC) -lncurses -o $(PROJ)
	@echo "File \"$(PROJ)\" generated!!!"
	@echo "Usage: ./$(PROJ)"

clean:
	@test -f $(PROJ) && rm $(PROJ) || echo "File \"$(PROJ)\" dosen't exist"
