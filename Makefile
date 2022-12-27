.PHONY: help build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: \
	dist/minbuild/SOURCES/minimum \
	dist/minbuild/minimum.spec
	rpmbuild --define "_topdir $$(realpath dist/minbuild)" -bb ./dist/minbuild/minimum.spec

dist/minbuild/SOURCES/minimum: dist/minbuild/SOURCES
	cp src/minimum $@

dist/minbuild/minimum.spec: dist/minbuild
	cp src/minimum.spec $@

dist/minbuild/SOURCES: dist/minbuild
	mkdir $@

dist/minbuild: dist
	mkdir $@

dist:
	mkdir $@

clean:
	rm -rf dist
