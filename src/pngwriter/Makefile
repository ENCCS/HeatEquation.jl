CC=gcc 

CFLAGS=-c -Wall -fPIC

SOURCES=pngwriter.c 
OBJECTS=$(SOURCES:.c=.o)
LIBS=-lpng -lz -lc #-lrt
LDFLAGS=-L/usr/lib  -L/usr/local/lib 

.c.o:
	$(CC) $(CFLAGS) $< -o $@ 

lib: $(OBJECTS)
	$(CC) -shared -fPIC -o libpngwriter.so $(OBJECTS) ${LDFLAGS} ${LIBS}

clean:
	rm *.o *.so

