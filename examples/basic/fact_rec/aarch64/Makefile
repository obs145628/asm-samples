
APP     := test.out
C_OBJS    := test.o
S_OBJS    := aarch64/lib.o

CC      := aarch64-linux-gnu-gcc
LD      := aarch64-linux-gnu-gcc
QEMU    := qemu-aarch64 -L /usr/aarch64-linux-gnu/

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
	$(QEMU) $(APP)

clean : 
	@rm -fv $(APP) $(C_OBJS) $(S_OBJS)
