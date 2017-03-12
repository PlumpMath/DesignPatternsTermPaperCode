#!/bin/bash
echo Running $1 tests
for i in {1..$1}
do
    echo Test run i
	ruby-prof main.rb >> profiledata.txt
done