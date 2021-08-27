#!/usr/bin/env bash

set -ex
if [ -d "README.md" ]; then
  echo "::set-output name=test::march"
elif [ -f "README.md" ] \
  && [ -f "$PWD/random.txt" ] && \
  [ -d "$PWD/.idea" ]
then
  echo "::set-output name=test::world"
else
  echo "::set-output name=test::on fire"
  exit 1
fi

if [ -d "$PWD/.idea" ]; then
  echo "Exists folder"
fi