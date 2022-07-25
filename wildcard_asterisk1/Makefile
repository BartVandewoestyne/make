# Key idea:
#
#  - Both * and % are called wildcards in Make, but they mean entirely
#    different things. * searches your filesystem for matching filenames. I
#    suggest that you always wrap it in the wildcard function, because otherwise
#    you may fall into a common pitfall described in the wildcard_asterisk2
#    example.
#
# Reference:
#
#   https://makefiletutorial.com/#-wildcard

# Print out file information about every .c file
print: $(wildcard *.c)
	ls -la  $?
