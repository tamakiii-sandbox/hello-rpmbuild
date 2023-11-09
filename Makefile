.PHONY: help build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: \
	dist/RPMS

dist/RPMS: dist/SOURCES/minimum | src/minimum.spec
	rpmbuild --define "_topdir $(PWD)/dist" -bb $|

dist/SOURCES/minimum: dist/SOURCES | src/minimum
	cp $| $@

dist/SOURCES: dist
	mkdir $@

dist:
	mkdir $@

clean:
	rm -rf dist
