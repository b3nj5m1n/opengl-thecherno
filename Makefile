
all: src/main.cpp src/Renderer.cpp
	g++ -c src/main.cpp -o obj/main.o
	g++ -c src/GLErrorManager.cpp -o obj/GLErrorManager.o
	g++ -c src/Renderer.cpp -o obj/Renderer.o
	g++ -c src/VertexBuffer.cpp -o obj/VertexBuffer.o
	g++ -c src/IndexBuffer.cpp -o obj/IndexBuffer.o
	g++ -c src/VertexArray.cpp -o obj/VertexArray.o
	g++ -c src/Shader.cpp -o obj/Shader.o
	g++ -c src/vendor/stb_image/stb_image.cpp -o obj/stb_image.o
	g++ -c src/Texture.cpp -o obj/Texture.o
	g++ -o bin/out -lglfw -lGL -lGLEW obj/*
