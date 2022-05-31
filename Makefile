all1: pgm.o	hough1
all2: pgm.o	hough2
all3: pgm.o	hough3
allBase: pgm.o	base

hough1:	houghBaseEntrega1.cu pgm.o
	nvcc houghBaseEntrega1.cu pgm.o -o hough1

hough2:	houghBaseEntrega2.cu pgm.o
	nvcc houghBaseEntrega2.cu pgm.o -o hough2

hough3:	houghBaseEntrega3.cu pgm.o
	nvcc houghBaseEntrega3.cu pgm.o -o hough3

base: houghBase2.cu pgm.o
	nvcc houghBase2.cu pgm.o -o base

pgm.o:	pgm.cpp
	g++ -c pgm.cpp -o ./pgm.o
