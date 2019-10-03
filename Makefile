
all: mygame archive 

mygame: main.o game.o othello.o
	g++ -o mygame main.o game.o othello.o
main.o: main.cc
	g++ -c -Wall main.cc
game.o: game.h game.cc
	g++ -c -Wall game.cc
othello.o: othello.h piece.h othello.cc colors.h
	g++ -c -Wall othello.cc

archive:
	tar -cvzf archive.tar.gz main.cc game.h game.cc Othello.h piece.h othello.cc colors.h makefile

clean:
	rm -rf *.o build archive.tar.gz 


	

    
