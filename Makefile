OBJS = main.o tile.o farm.o checkBounds.o boundsToString.o
CC = g++
DEBUG = -g
CFLAGS = -std=c++11 -Wall  -c $(DEBUG)
LFLAGS = -Wall  $(DEBUG)

test : $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o test

main.o : main.cpp test.h
		$(CC) $(CFLAGS) main.cpp

tile.o : lib/tile/tile/tile.cpp lib/tile/tile/tile.h
	$(CC) $(CFLAGS) lib/tile/tile/tile.cpp

farm.o : lib/farm/farm/farm.cpp lib/farm/farm/farm.h
	$(CC) $(CFLAGS) lib/farm/farm/farm.cpp

checkBounds.o : lib/checkBounds/checkbounds/checkBounds.cpp lib/checkBounds/checkbounds/checkBounds.h
	$(CC) $(CFLAGS) lib/checkBounds/checkbounds/checkBounds.cpp

boundsToString.o : lib/bounds/bounds/boundsToString.cpp lib/bounds/bounds/bounds.h
	$(CC) $(CFLAGS) lib/bounds/bounds/boundsToString.cpp
