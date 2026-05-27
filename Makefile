CC      = gcc
# -g for debug symbols
CFLAGS  = -Wall -Wextra -g
TARGET  = build/farti

ASM_SRCS := $(shell find src/asm/ -name "*.S")
ASM_OBJS := $(ASM_SRCS:.S=.o)
C_SRCS := $(shell find src/ -name "*.c")
C_OBJS   := $(C_SRCS:.c=.o)


all: $(TARGET)

$(TARGET): $(C_OBJS) $(ASM_OBJS) | build
	$(CC) $(CFLAGS) -o $@ $^

build:
	mkdir -p build

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.S
	$(CC) -c $< -o $@

clean:
	find . -name "*.o" -delete
	rm -f $(TARGET)