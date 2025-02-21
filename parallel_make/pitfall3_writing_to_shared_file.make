# Key idea:
#
#   When multiple jobs in the Makefile write to a shared file.  Even if they
#   never read the file (for example, they might write to a log file), locking
#   of the file for write access can cause competing jobs to be stalled,
#   reducing overall performance of the parallel build.
#
#   In this example using `make` or `make -j 4` does not make much difference.

LOCK_FILE := lock.me

.PHONY: all
all: t1 t2
	@echo done.

t1:
	@lockfile $(LOCK_FILE)
	@sleep 10
	@rm -f $(LOCK_FILE)
	@echo Finished $@

t2:
	@lockfile $(LOCK_FILE)
	@sleep 20
	@rm -f $(LOCK_FILE)
	@echo Finished $@
