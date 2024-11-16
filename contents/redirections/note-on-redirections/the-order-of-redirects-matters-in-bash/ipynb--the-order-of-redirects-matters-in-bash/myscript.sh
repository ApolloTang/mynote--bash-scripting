#!/usr/bin/env sh

echo 'some message'       # Goes to stdout by default
echo 'error message' >&2  # Redirects to stderr explicitly
