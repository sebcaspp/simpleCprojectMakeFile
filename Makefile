OUT_DIR= target
OBJ_DIR= $(OUT_DIR)/objs
SRC    = src

_OBJS = Main.o
OBJS  = $(patsubst %,$(OBJ_DIR)/%,$(_OBJS))

main : $(OBJS)
	gcc -o $(OUT_DIR)/testMake $(OBJS)	

$(OBJS) : $(SRC)/Main.c
	mkdir -p ./$(OBJ_DIR)
	gcc -c $(SRC)/Main.c
	mv *.o $(OBJ_DIR)/

.PHONY : clean
clean : 
	rm -rf $(OUT_DIR)