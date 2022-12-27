.PHONY: help build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: \
	dist/SOURCES/minimum \
	dist/minimum.spec
	rpmbuild --define "_topdir $$(realpath dist)" -bb ./dist/minimum.spec

dist/SOURCES/minimum: dist/SOURCES | src/minimum
	cp $| $@

dist/minimum.spec: dist | src/minimum.spec
	cp $| $@

dist/SOURCES: dist
	mkdir $@

dist:
	mkdir $@

clean:
	rm -rf dist
