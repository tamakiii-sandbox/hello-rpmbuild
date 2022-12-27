.PHONY: help install

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: | dist/RPMS/x86_64/minimum-1-1.amzn2.x86_64.rpm
	rpm -ivh $|
