CC = g++

default: compression

compression: compression.cpp
	${CC} -O0 -g -Wall -Wextra -Wno-unused-parameter -fopenmp -o $@ compression.cpp -Lcnpy/ -lcnpy -lz --std=c++11

clean:
	-rm -f compression

all: clean compression
