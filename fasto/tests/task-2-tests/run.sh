#!/usr/bin/env sh
./bin/runtests.sh -i tests/task-2-tests/
echo Runtime error at line 2: negative array size > tests/task-2-tests/replicate-negative.out
./bin/runtests.sh tests/task-2-tests/
./bin/runtests.sh -o tests/task-2-tests/
echo Interpreter error: Argument of '"replicate"' is negative: -1 at line 2, column 5 > tests/task-2-tests/replicate-negative.out
