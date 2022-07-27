# Key idea:
#
#   The filter function can be used in static pattern rules to match the
#   correct files.
#
# Reference:
#
#   https://makefiletutorial.com/#static-pattern-rules-and-filter

obj_files = foo.result bar.o lose.o
src_files = foo.raw bar.c lose.c

.PHONY: all
all: $(obj_files)

$(filter %.o,$(obj_files)): %.o: %.c
	echo "target: $@ prereq: $<"
$(filter %.result,$(obj_files)): %.result: %.raw
	echo "target: $@ prereq: $<" 

%.c %.raw:
	touch $@

clean:
	rm -f $(src_files)
