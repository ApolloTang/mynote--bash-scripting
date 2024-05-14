#!/usr/bin/env sh

./check-file-exists-by-name.sh i-donot-exist.txt
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ];
then
  echo "The execution of 'check-file-exists-by-name.sh' was successful, let do A"
else
  echo "The execution of 'check-file-exists-by-name.sh' failed, the error was $EXIT_CODE"
fi
