WAYLAND=`pkg-config wayland-client --cflags --libs`
CFLAGS?=-std=c11 -Wall -Werror -O3 -fvisibility=hidden

shared_memory: shared_memory.c
	$(CC) -o shared_memory shared_memory.c $(WAYLAND) -lrt
clean:
	$(RM) shared_memory
