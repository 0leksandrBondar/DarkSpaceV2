#include <gtest/gtest.h>

TEST(test1, test) { EXPECT_TRUE(10 < 20); }

int main(int argc, char* argv[])
{
    ::testing::InitGoogleTest(&argc, argv);

    return RUN_ALL_TESTS();
}