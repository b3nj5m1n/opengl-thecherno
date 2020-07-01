
all: main.cpp
	g++ -o out.a -lglfw -lGL -lGLU -lglut main.cpp
