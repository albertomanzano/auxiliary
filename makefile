
# Headers
HEADERS=./include/*.h
HPATH=./include


all: ejecutable

ejecutable: main.o 
	ar crf lib/liblets_be_rational.a ./build/erf_cody.o ./build/normaldistribution.o ./build/rationalcubic.o ./build/LetsBeRational.o

main.o: 
	g++ -c -std=c++11 -I $(HPATH) $(wildcard HEADERS)  -I ./src ./src/erf_cody.cpp 
	g++ -c -std=c++11 -I $(HPATH) $(wildcard HEADERS)  -I ./src ./src/normaldistribution.cpp 
	g++ -c -std=c++11 -I $(HPATH) $(wildcard HEADERS)  -I ./src ./src/rationalcubic.cpp 
	g++ -c -std=c++11 -I $(HPATH) $(wildcard HEADERS)  -I ./src ./src/LetsBeRational.cpp 
	mv *.o ./build


		
