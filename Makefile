CFLAGS+=-O2 -Wall -Wextra -g -Wno-sign-compare -Wno-pointer-sign

all: serialcheck serialstats

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

serialcheck: serialcheck.o
serialstats: serialstats.o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^	

clean:
	rm -f serialcheck serialstats  *.o
