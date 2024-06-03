#!/usr/bin/env sh
./bin/runtests.sh -i tests/task-1-tests/
echo Runtime error at line 4: division by zero > tests/task-1-tests/div-zero.out
mv tests/task-1-tests/not-exception.in tests/task-1-tests/not-exception.err
echo Type error: Type mismatch in argument of unary operator: expected bool, but got char at line 2, column 11 > tests/task-1-tests/not-exception.err 
echo Type error: Type mismatch in argument of unary operator: expected bool, but got char at line 2, column 11 > tests/task-1-tests/not-exception.out 
./bin/runtests.sh tests/task-1-tests/
./bin/runtests.sh -o tests/task-1-tests/
echo Interpreter error: Attempt to divide by 0 at line 4, column 13 > tests/task-1-tests/div-zero.out
echo "Interpreter error: Bad type for operand of not: expected bool, but got char (\"'a'\") at line 2, column 15" > tests/task-1-tests/div-zero.out
mv tests/task-1-tests/not-exception.err tests/task-1-tests/not-exception.in
