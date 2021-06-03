##
# Project Title
#
# @file
# @version 0.1
#
plain-fact-x64-print.o: plain-fact-x64-print.s
	nasm -f elf64 -o plain-fact-x64-print.o plain-fact-x64-print.s

plain-fact-x64-print.exe: plain-fact-x64-print.o
	ld -e start -o plain-fact-x64-print.exe plain-fact-x64-print.o

plain-fact-x64-exit-code.o: plain-fact-x64-exit-code.s
	nasm -f elf64 -o plain-fact-x64-exit-code.o plain-fact-x64-exit-code.s

plain-fact-x64-exit-code.exe: plain-fact-x64-exit-code.o
	ld -e start -o plain-fact-x64-exit-code.exe plain-fact-x64-exit-code.o

all: plain-fact-x64-exit-code.exe plain-fact-x64-print.exe

clean:
	rm plain-fact-x64*.o plain-fact-x64*.exe

# end
