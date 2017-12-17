#!/bin/sh

if test $(which gosu) = /usr/local/bin/gosu; then
  echo "PASS" >&2
else
  echo "FAIL: expected gosu to install correctly" >&2
  exit 1
fi

if test "$(gosu nobody id -u)" = "$(id -u nobody)"; then
  echo "PASS" >&2
else
  echo "FAIL: expected gosu to change users" >&2
  exit 1
fi

echo "ALL TESTS PASS" >&2
