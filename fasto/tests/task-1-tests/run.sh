#!/usr/bin/env sh
runtests -i tests/task-1-tests/
echo Runtime error at line 4: division by zero > tests/task-1-tests/div-zero.out
runtests tests/task-1-tests/
runtests -o tests/task-1-tests/
echo Interpreter error: Attempt to divide by 0 at line 4, column 13 > tests/task-1-tests/div-zero.out
