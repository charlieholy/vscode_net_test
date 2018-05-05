SRCS = $(wildcard myping.cpp )

OBJS = $(SRCS:.c = .o)

CC = g++

INCLUDES = -I  network/ -I configs/ \
	-I. \

LIBS = -L../lib -lpthread 

CCFLAGS = -g -Wall -O0 -std=c++11 -fpermissive -Wno-strict-aliasing

OUTPUT = Nyx.out

all:$(OUTPUT)

$(OUTPUT) : $(OBJS)
	$(CC) $^ -o $@ $(INCLUDES) $(LIBS) $(CCFLAGS)

%.o : %.c
	$(CC) -c $< 

clean:
	rm -rf *.out *.o

.PHONY:clean