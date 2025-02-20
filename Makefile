CXX = g++
CXXFLAGS = -Wall -g -Werror -Wpedantic -W

TARGET = my_program
TEST_TARGET = my_test_program

SRC = main_test.cpp
OBJ = $(SRC:.cpp=.o)

GTEST_DIR = /usr/include/gtest
GTEST_LIB = -lgtest -lgtest_main -pthread

all: $(TARGET) $(TEST_TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(TEST_TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(GTEST_LIB)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -I$(GTEST_DIR) -c $<

clean:
	rm -f $(OBJ) $(TARGET) $(TEST_TARGET)
