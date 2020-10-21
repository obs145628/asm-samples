
APP     := test.out
C_OBJS    := test.o
S_OBJS    := x64/lib.o

CC      := gcc
LD      := gcc

CFLAGS  := -O0 -Wall -Wextra
LDFLAGS := 


.PHONY : all clean run

all: $(APP)

$(APP) : $(C_OBJS) $(S_OBJS)
	$(LD) $^ $(LDFLAGS) -o $@

$(C_OBJS) : %.o : %.c
	$(CC) -c $< $(CFLAGS) -o $@

$(S_OBJS) : %.o : %.s
	$(CC) -c $< -o $@

run: $(APP)
	./$(APP)

clean : 
	@rm -fv $(APP) $(C_OBJS) $(S_OBJS)
