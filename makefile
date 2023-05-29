# nmake makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#
#  Compile::GNU C
#  Make: nmake or GNU make
all : clipbrd.exe

clipbrd.exe : clipbrd.obj clipbrd.res clipbrd.def
	gcc -Zomf clipbrd.obj clipbrd.def -o clipbrd.exe
	wrc clipbrd.res

clipbrd.obj : clipbrd.c clipbrd.h
	gcc -Wall -Zomf -c -O2 clipbrd.c -o clipbrd.obj

clipbrd.res : clipbrd.rc 
	wrc -r clipbrd.rc

clean :
	rm -rf *exe *res *obj