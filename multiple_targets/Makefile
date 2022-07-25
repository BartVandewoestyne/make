# Key idea:
#
#   - When there are multiple targets for a rule, the commands will be run for
#     each target.
#   - $@ is an automatic variable that contains the target name.
#
# Reference:
#
#   - https://makefiletutorial.com/#multiple-targets

all: f1.o f2.o

f1.o f2.o:
	echo $@
# Equivalent to:
# f1.o:
#	 echo f1.o
# f2.o:
#	 echo f2.o
