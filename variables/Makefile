# Key ideas:
#
#   - Variables can only be strings.
#   - You'll typically want to use := but = also works.
#     See https://makefiletutorial.com/#variables-pt-2

files := file1 file2
some_file: $(files)
	echo "Look at this variable: " $(files)
	touch some_file

file1:
	touch file1
file2:
	touch file2

clean:
	rm -f file1 file2 some_file
