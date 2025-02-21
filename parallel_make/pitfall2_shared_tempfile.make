# Key idea
#
#   GNU Make can break when running parallel if multiple rules use the same
#   temporary file.

#TMP_FILE := /tmp/scratch_file    # Wrong: both targets use same temp file.
TMP_FILE = /tmp/scratch_file.$@  # Correct: incorporate target name in temp file name.

.PHONY: all
all: t

t: t1 t2
	cat t1 t2 > $@

t1:
	echo Output from $@ > $(TMP_FILE)
	cat $(TMP_FILE) > $@

t2:
	echo Output from $@ > $(TMP_FILE)
	cat $(TMP_FILE) > $@
