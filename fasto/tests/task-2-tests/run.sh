#!/usr/bin/env sh
runtests -i tests/task-2-tests/
echo Runtime error at line 2: negative array size > tests/task-2-tests/replicate-negative.out
runtests tests/task-2-tests/
runtests -o tests/task-2-tests/
echo Interpreter error: Argument of '"replicate"' is negative: -1 at line 2, column 5 > tests/task-2-tests/replicate-negative.out
