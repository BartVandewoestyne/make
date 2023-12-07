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
# According to [gnu_make_manual], writing a '-' at the beginning of the line's
# text (after the initial tab) might be more flexible than using -i.
#
# References:
#   [20181221stackoverflow] https://stackoverflow.com/questions/53890710/make-ignore-errors-what-is-the-difference-between-i-and-k
#   [gnu_make_manual] https://www.gnu.org/software/make/manual/make.html#Errors

all: fail success

all success:
	@echo $@

fail:
	exit 1
	@echo $@
