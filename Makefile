CXX = g++
CXXFLAGS = -Wall -g -Werror -Wpedantic -W

TEST_TARGET = my_test

TEST_SRC = main_test.cpp

TEST_OBJ = $(TEST_SRC:.cpp=.o)

all: $(TEST_TARGET)

$(TEST_TARGET): $(TEST_OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ -lgtest -lgtest_main -pthread


%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<



GTEST_DIR = /usr/include/gtest
GTEST_LIB = -lgtest -lgtest_main -pthread


$(TSET_TARGET): $(TEST_OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(GTEST_LIB)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -I$(GTEST_DIR) -c $<

clean:
	rm -f $ $(TEST_OBJ) $(TEST_TARGET)
