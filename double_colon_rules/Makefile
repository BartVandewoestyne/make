# Key idea:
#
#   Double-Colon Rules are rarely used, but allow multiple rules to be defined
#   for the same target. If these were single colons, a warning would be
#   printed and only the second set of commands would run.
#
# Reference:
#
#   - https://makefiletutorial.com/#double-colon-rules
#   - https://www.gnu.org/software/make/manual/html_node/Double_002dColon.html#Double_002dColon

all: blah

blah::
	echo "hello"

blah::
	echo "hello again"
