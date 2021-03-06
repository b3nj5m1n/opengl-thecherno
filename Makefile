# Compiler
CC = g++

# Compile flags
CLFAGS = -c

# Source Directory
SDIR = src
# Object Directory
ODIR = obj
# Binary Directory
BDIR = bin

all: src/main.cpp src/Renderer.cpp
	$(CC) $(CLFAGS) $(SDIR)/main.cpp -o $(ODIR)/main.o
	$(CC) $(CLFAGS) $(SDIR)/GLErrorManager.cpp -o $(ODIR)/GLErrorManager.o
	$(CC) $(CLFAGS) $(SDIR)/Renderer.cpp -o $(ODIR)/Renderer.o
	$(CC) $(CLFAGS) $(SDIR)/VertexBuffer.cpp -o $(ODIR)/VertexBuffer.o
	$(CC) $(CLFAGS) $(SDIR)/IndexBuffer.cpp -o $(ODIR)/IndexBuffer.o
	$(CC) $(CLFAGS) $(SDIR)/VertexArray.cpp -o $(ODIR)/VertexArray.o
	$(CC) $(CLFAGS) $(SDIR)/Shader.cpp -o $(ODIR)/Shader.o
	$(CC) $(CLFAGS) $(SDIR)/vendor/stb_image/stb_image.cpp -o $(ODIR)/stb_image.o
	$(CC) $(CLFAGS) $(SDIR)/Texture.cpp -o $(ODIR)/Texture.o
	$(CC) $(CLFAGS) $(SDIR)/vendor/imgui/imgui.cpp -o $(ODIR)/imgui.o
	$(CC) $(CLFAGS) $(SDIR)/vendor/imgui/imgui_impl_glfw_gl3.cpp -o $(ODIR)/imgui_impl_glfw_gl3.o
	$(CC) $(CLFAGS) $(SDIR)/vendor/imgui/imgui_draw.cpp -o $(ODIR)/imgui_draw.o
	$(CC) $(CLFAGS) $(SDIR)/vendor/imgui/imgui_demo.cpp -o $(ODIR)/imgui_demo.o
	$(CC) $(CLFAGS) $(SDIR)/tests/TestClearColor.cpp -o $(ODIR)/TestClearColor.o
	$(CC) $(CLFAGS) $(SDIR)/tests/TestTexture2D.cpp -o $(ODIR)/TestTexture2D.o
	$(CC) $(CLFAGS) $(SDIR)/tests/Test.cpp -o $(ODIR)/Test.o
	$(CC) -o $(BDIR)/out -lglfw -lGL -lGLEW $(ODIR)/*
