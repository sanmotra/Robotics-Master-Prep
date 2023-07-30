#!/bin/bash

# Creating Build Directory
mkdir build

# Compiling Library Objects
c++ -std=c++17 -c -I./include src/subtract.cpp -o build/substract.o # Subtract
c++ -std=c++17 -c -I./include src/sum.cpp -o build/sum.o

# Compiling the library archive
ar rcs build/libipb_arithmetic.a build/sum.o build/substract.o

# Compile the main program and link with the library
c++ -I./include src/main.cpp -L./build -lipb_arithmetic -o build/main


