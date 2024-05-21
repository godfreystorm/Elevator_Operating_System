CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11 -O2 -pthread
LIBS = -lcurl
SRC = main.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = scheduler_os
$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LIBS)
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<
clean:
	rm -f $(OBJ) $(TARGET)
.PHONY: clean
