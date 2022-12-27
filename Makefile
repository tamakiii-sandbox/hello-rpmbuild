.PHONY: help build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

build:
	bash minimum_rpm.sh

clean:
	rm -rf build
