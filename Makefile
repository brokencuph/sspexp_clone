#CXX = g++
CXX = em++
CXXFLAGS = -w -Wall -Wextra -O3  -std=c++14 -msse -msse2 -msimd128 --preload-file NY_refined.txt -s TOTAL_MEMORY=2047MB
LIB = -I./include

all: bin bin/sspexp_run.html

bin/sspexp_run.html: main.cpp omp.cpp
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ $(LIB)

bin:
	mkdir -p bin 

clean:
	rm -rf bin
