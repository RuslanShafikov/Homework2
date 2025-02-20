CXX = g++
CXXFLAGS = -Wall -g -Werror -Wpedantic -W

TARGET = my_program

SRC = main_test.cpp

OBJ = $(SRC:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp %.h
	$(CXX) $(CXXFLAGS) -c $<


clean:
	rm -f $(OBJ) $(TARGET)