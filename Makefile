cc := gcc
ccflags := -g -Wall -pedantic -std=c99
exec :=

exec += segf1
segf1 : segf1.c
	$(cc) $(ccflags) -o $@ $<

.PHONY : all clean

clean :
	$(rm) $(exec) *.o *.a *~
all : $(exec)
