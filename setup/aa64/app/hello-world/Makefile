
APP     := app.out
OBJS    := main.o

CC      := aarch64-linux-gnu-gcc
LD      := aarch64-linux-gnu-gcc

CFLAGS  := -O2 -Wall -Wextra
LDFLAGS := 

.PHONY : all clean

all: $(APP)

$(APP) : $(OBJS)
	$(LD) $^ $(LDFLAGS) -o $@

$(OBJS) : %.o : %.c
	$(CC) -c $< $(CFLAGS) -o $@

clean: 
	@rm -fv $(APP) $(OBJS)
