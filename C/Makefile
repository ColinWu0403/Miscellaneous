# List of C files
C_FILES = bitrange.c endian.c expensivebook.c hailstorm.c printvar.c review.c selectionsort.c swapprev.c

# List of executables
EXECUTABLES = $(C_FILES:.c=)

# Compilation rule for each C file
%: %.c
	gcc -g -o $@ $<

# Target to build all executables
all: $(EXECUTABLES)

# Target to clean all executables
clean:
	rm -f $(EXECUTABLES)
