# CROSS_COMPILE=aarch64-linux-gnu-
# CC = $(CROSS_COMPILE)gcc
# CPP = $(CROSS_COMPILE)gcc
# FORCE:
BIN=./bin/x6
CC=gcc
CPP=g++

INCS=-I./include 
INCS+=-I./log
INCS+=-I./context

PTHREAD_LIBS+=-lpthread
LDFLAGS=$(PTHREAD_LIBS)


# Debug flags
CFLAGS=-g -O0  
CPPFLAGS=-g -O0


CSRCS:=$(wildcard *.c ./context/*.c ./log/*.c ) 
COBJS:=$(CSRCS:.c=.o)

CPPSRCS:=$(wildcard *.cpp) 
CPPOBJS:=$(CPPSRCS:.cpp=.o)

all:$(BIN)

$(COBJS) : %.o: %.c
	$(CC) -c $< -o $@ $(INCS) $(CFLAGS)

$(CPPOBJS) : %.o: %.cpp
	$(CPP) -c $< -o $@ $(INCS) $(CPPFLAGS) 

$(BIN):$(COBJS) $(CPPOBJS)
	$(CC) -o $(BIN) $(COBJS) $(CPPOBJS) $(LIBS) $(LDFLAGS) 

clean:
	rm $(COBJS) $(CPPOBJS)
