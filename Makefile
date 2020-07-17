# Makefile for building demo applications.
# Credit to Brian Fraser.

# Edit this file to compile extra C files into their own programs.
TARGETS=sum_on_thread

CROSS_TOOL=
CC_PP = $(CROSS_TOOL)g++
CC_C = $(CROSS_TOOL)gcc

CFLAGS = -Wall -g -std=c99 -Werror -pthread

all: clean $(TARGETS)

$(TARGETS):
	$(CC_C) $(CFLAGS) $@.c -o $@

clean:
	rm -f $(TARGETS)