.PHONY: help build clean

BUILDDIR := build/minbuild

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: dist/minbuild/SOURCES/minimum
	bash minimum_rpm.sh

dist/minbuild/SOURCES/minimum: dist/minbuild/SOURCES
	cp src/minimum $@

dist/minbuild/SOURCES: dist/minbuild
	mkdir $@

dist/minbuild: dist
	mkdir $@

dist:
	mkdir $@

clean:
	rm -rf build
