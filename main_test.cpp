#include <gtest/gtest.h>
#include <iostream>

TEST(SimpleTest, EqualityTest) {
    EXPECT_EQ(2222222222222222, 2222222222222222);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
