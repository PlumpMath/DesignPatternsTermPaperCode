#!/bin/bash
echo Running $1 tests
for i in {1..$1}
do
	ruby-prof main.rb
done