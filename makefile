CXX = g++
CXXFLAGS = -std=c++17 -Wall -I../include -I/home/lana/Table/Lua_Var_Exec/include -I../Lua_Var_Exec
LDFLAGS = -lgtest -lgtest_main -pthread /usr/lib/x86_64-linux-gnu/liblua5.1.a

SRC_FILES = ../Lua_Var_Exec/source/str.cpp \
            ../Lua_Var_Exec/source/parse_exception.cpp \
            ../Lua_Var_Exec/source/marks.cpp \
            ../Lua_Var_Exec/source/tree_node.cpp \
            ../Lua_Var_Exec/source/tree.cpp \
            ../Lua_Var_Exec/source/blocks.cpp \
            ../Lua_Var_Exec/LuaWrapper.cpp

TEST_FILES = strTest.cpp marksTest.cpp parser.cpp tree_test.cpp treeNode_test.cpp blocksTest.cpp

test_program: $(TEST_FILES) $(SRC_FILES)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

run: test_program
	./test_program

clean:
	rm -f test_program

.PHONY: run clean