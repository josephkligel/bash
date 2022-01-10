#!/bin/bash

ext=$1

for x in ./*."$ext"; do
	mkdir "${x%.*}" && mv "$x" "${x%.*}"
done
