hello: main.o functions.o
	g++ main.o functions.o -o hello

main.o: main.cpp functions.h
	g++ -c main.cpp

functions.o: functions.cpp functions.h
	g++ -c functions.cpp

clean:
	rm hello main.o functions.o
