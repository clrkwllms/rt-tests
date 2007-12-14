VERSION_STRING = "0.18"

TARGETS	= cyclictest signaltest
FLAGS	= -Wall -Wno-nonnull -O2
LIBS 	= -lpthread -lrt
INSTDIR	= /usr/local/bin/
DOCDIR	= /usr/share/man/man8/

all: cyclictest signaltest

cyclictest: src/cyclictest/cyclictest.c
	$(CC) $(FLAGS) -D VERSION_STRING=$(VERSION_STRING) $^ -o $@ $(LIBS)

signaltest: src/signaltest/signaltest.c
	$(CC) $(FLAGS) -D VERSION_STRING=$(VERSION_STRING) $^ -o $@ $(LIBS)

clean:
	rm -f $(TARGETS) *.o .depend *.*~ ChangeLog

changelog:
	git log >ChangeLog

install: all
	cp cyclictest signaltest $(INSTDIR)
	gzip src/cyclictest/cyclictest.8 -c >$(DOCDIR)cyclictest.8.gz

release: clean changelog
	tar -C ".." --exclude ".git" --exclude "patches" -c rt-tests | gzip >../releases/rt-tests-$(VERSION_STRING).tar.gz
