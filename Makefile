
all: main.cpp
	g++ -o bin/out -lglfw -lGL -lGLU -lglut main.cpp
