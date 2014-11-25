
EXEC = test  
OBJS = $(SRC:%.c=%.o)  
SRC  = $(wildcard *.c) $(wildcard *.h)  

CC = gcc  
CFLAGS += -O2 -Wall  
LDFLAGS +=   

all:$(EXEC)  

$(EXEC):$(OBJS)  
	$(CC) $(LDFLAGS) -o $@ $(OBJS)  

%.o:%.c  
	$(CC) $(CFLAGS) -c $< -o $@  

clean:  
	@rm -vf $(EXEC) *.o *~  
