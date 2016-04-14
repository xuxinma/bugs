cc := gcc
ccflags := -g -Wall -pedantic -std=c99
exec :=

exec += fault1
fault1 : fault1.c
	$(cc) $(ccflags) -o $@ $<
exec += fault2
fault2 : fault2.c
	$(cc) $(ccflags) -o $@ $<

.PHONY : all clean

clean :
	@rm -f $(exec) *.o *.a *~
all : $(exec)
