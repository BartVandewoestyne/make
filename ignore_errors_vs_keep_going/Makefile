# Explains what exactly is the difference between
#
#   make -i, --ignores-errors
#
#     => The all target is still run here, because make believes that the
#        fail target actually succeeded.  It's equivalen to adding a -
#        at  the beginning of every recipe line.
#
#   make -k, --keep-going
#
#     => Here, make knows the fail target was not built.  success is run
#        because of -k: it doesn't depend on fail.  However, all is not
#        built because it does depend on fail.
#
# References:
#   https://stackoverflow.com/questions/53890710/make-ignore-errors-what-is-the-difference-between-i-and-k

all: fail success

all success:
	@echo $@

fail:
	exit 1
	@echo $@
