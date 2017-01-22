
SUBDIRS = mpic test examples apps

all : 
	for t in $(SUBDIRS); do $(MAKE) -C $$t; done

#pkg :
#	$(MAKE) -C rpm
#
#apps :
#	$(MAKE) -C apps
#
#3rdparty :
#	$(MAKE) -C 3rdparty
#
#check : all
#	$(MAKE) check -C test

clean:
	for t in $(SUBDIRS); do $(MAKE) clean -C $$t; done

fmt:
	for t in $(SUBDIRS); do $(MAKE) fmt -C $$t; done

.PHONY: all test check clean apps 3rdparty pkg fmt
