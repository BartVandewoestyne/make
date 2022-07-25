# Key idea:
#
#   - There are many automatic variables, but often only a few show up.
#
# References:
#
#   - https://makefiletutorial.com/#automatic-variables
#
#   - GNU Make manual - 10.5.3 Automatic Variables
#     https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html

hey: one two
	# Outputs "hey", since this is the first target
	echo $@

	# Outputs all prerequisites newer than the target
	echo $?

	# Outputs all prerequisites
	echo $^

	touch hey

one:
	touch one

two:
	touch two

clean:
	rm -f hey one two
