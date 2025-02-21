# Running this example without parallellism:
#
#    make -f example.make
#
# means:
#
#   - The tasks will execute one after the other in sequence.
#   - The total execution time will be approximately 2 + 3 + 1 + 2 = 8 seconds.
#
# Running this example with parallellism:
#
#    make -j 4 -f example.make
#
# means:
#
#   - The tasks will run in parallel, up to 4 at the same time.
#   - The total execution time will be approximately 3 seconds, since task2
#     takes the longest.

.PHONY: all task1 task2 task3 task4

all: task1 task2 task3 task4
	@echo "All tasks completed!"

task1:
	@echo "Starting Task 1..."
	sleep 2
	@echo "Task 1 done!"

task2:
	@echo "Starting Task 2..."
	sleep 3
	@echo "Task 2 done!"

task3:
	@echo "Starting Task 3..."
	sleep 1
	@echo "Task 3 done!"

task4:
	@echo "Starting Task 4..."
	sleep 2
	@echo "Task 4 done!"

