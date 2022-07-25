# Key idea:
#
#   - Here's a list of implicit rules:
#
#       -> Compiling a C program: n.o is made automatically from n.c with a
#       command of the form $(CC) -c $(CPPFLAGS) $(CFLAGS)
#
#       -> Compiling a C++ program: n.o is made automatically from n.cc or
#       n.cpp with a command of the form $(CXX) -c $(CPPFLAGS) $(CXXFLAGS)
#
#       -> Linking a single object file: n is made automatically from n.o by
#       running the command $(CC) $(LDFLAGS) n.o $(LOADLIBES) $(LDLIBS)
#
#   - The important variables used by implicit rules are:
#
#       CC: Program for compiling C programs; default cc
#       CXX: Program for compiling C++ programs; default g++
#       CFLAGS: Extra flags to give to the C compiler
#       CXXFLAGS: Extra flags to give to the C++ compiler
#       CPPFLAGS: Extra flags to give to the C preprocessor
#       LDFLAGS: Extra flags to give to compilers when they are supposed to
#         invoke the linker
#
# References:
#
#   - https://makefiletutorial.com/#implicit-rules
#
#   - The Open Group Base Specifications Issue 7, 2018 edition
#     IEEE Std 1003.1-2017 (Revision of IEEE Std 1003.1-2008)
#     Default Rules
#     https://pubs.opengroup.org/onlinepubs/9699919799/utilities/make.html
#
#   - GNU make implicit rules:
#     https://www.gnu.org/software/make/manual/make.html#Catalogue-of-Rules

CC = gcc # Flag for implicit rules
CFLAGS = -g # Flag for implicit rules. Turn on debug info

# Implicit rule #1: blah is built via the C linker implicit rule
# Implicit rule #2: blah.o is built via the C compilation implicit rule, because blah.c exists
blah: blah.o

blah.c:
	echo "int main() { return 0; }" > blah.c

clean:
	rm -f blah*
