CC = g++
CFLAGS= -g -Wall
DEPS = colors.h game.h othello.h piece.h
OBJ = game.o main.o othello.o

game: $(OBJ)
	@ ${CC} ${CFLAGS} *.o

%.o: %.cc $(DEPS)
	@ ${CC} -c -o $@ $< ${CFLAGS}

all:
	@ make build
	@ make archive

build:
	@ make game

clean:
	@ -rm -f *.o core *.core a.out *.class
	@ rm -r html latex

archive:
	@ - tar cvzf Sample_student_project.tar.gz .
