# Key ideas:
#
#  - * may be used in the target, prerequisites, or in the wildcard function.
#
#  - Danger: * may not be directly used in a variable definitions
#
#  - Danger: When * matches no files, it is left as it is (unless run in the
#    wildcard function)
#
# Reference:
#
#   https://makefiletutorial.com/#-wildcard

thing_wrong := *.o # Don't do this! '*' will not get expanded
thing_right := $(wildcard *.o)

all: one two three four

# Fails, because $(thing_wrong) is the string "*.o"
one: $(thing_wrong)

# Stays as *.o if there are no files that match this pattern :(
two: *.o

# Works as you would expect! In this case, it does nothing.
three: $(thing_right)

# Same as rule three
four: $(wildcard *.o)
