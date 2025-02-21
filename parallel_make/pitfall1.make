# Key idea:
#
#   A problem that plagues Makefiles when run in parallel is often missing or
#   implicit (left-to-right) dependencies.  If a Makefile breaks under parallel
#   GNU Make with an error, it's worth looking for missing dependencies
#   straight away as they are very common.
#
#   In this example, there is no actual dependency in the Makefile that states
#   that t3 must be built before t2.
#
# References:
#
#   [graham-cumming20080301] The Pitfalls and Benefits of GNU Make Parallelization
#     https://www.cmcrossroads.com/article/pitfalls-and-benefits-gnu-make-parallelization

.PHONY: all
all: t5 t4 t1
	@echo Making $@

t1: t3 t2
	touch $@

t2:                     # Missing dependency on t3 here!
	cp t3 $@

t3:
	touch $@

t4:
	touch $@

t5:
	touch $@
