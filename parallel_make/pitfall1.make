# References:
#
#   [graham-cumming20080301] The Pitfalls and Benefits of GNU Make Parallelization
#     https://www.cmcrossroads.com/article/pitfalls-and-benefits-gnu-make-parallelization

.PHONY: all
all: t5 t4 t1
	@echo Making $@

t1: t3 t2
	touch $@

t2:
	cp t3 $@

t3:
	touch $@

t4:
	touch $@

t5:
	touch $@
