#!/bin/bash

for i in {1..$1}
do
	make run >> output.txt
done
