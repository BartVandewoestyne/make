# Key idea:
#
#   - Pattern rules are often used but quite confusing. You can look at them as
#     two ways:
#
#       - A way to define your own implicit rules
#       - A simpler form of static pattern rules
#
#     Pattern rules contain a '%' in the target. This '%' matches any nonempty
#     string, and the other characters match themselves. ‘%’ in a prerequisite
#     of a pattern rule stands for the same stem that was matched by the ‘%’ in
#     the target.
#
# Reference:
#
#   https://makefiletutorial.com/#pattern-rules

# Define a pattern rule that compiles every .c file into a .o file
%.o : %.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@

# Define a pattern rule that has no pattern in the prerequisites.
# This just creates empty .c files when needed.
%.c:
	touch $@
