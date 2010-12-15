# python-nmap
# v0.2.1
VERSION=`python setup.py --version`
ARCHIVE=`python setup.py --fullname`


test:
	@python3 nmap/nmap.py

install:
	@python3 setup.py install

archive:
	@python3 setup.py sdist
	@echo Archive is create and named dist/$(ARCHIVE).tar.gz
	@echo -n md5sum is :
	@md5sum dist/$(ARCHIVE).tar.gz

license:
	@python3 setup.py --license

register:
	@python3 setup.py register

doc:
	@pydoc3 -w nmap/nmap.py