# List of assembly files
ASSEMBLY_FILES = addarray.s avg.s fibonnaci.s helloworld.s maxmin.s squared.s printadd.s selectionsort.s strlen.s

# List of executables
EXECUTABLES = $(ASSEMBLY_FILES:.s=)

# Compilation rule for each assembly file
%: %.s
	gcc -static -g -o $@ $<

# Target to build all executables
all: $(EXECUTABLES)

# Target to clean all executables
clean:
	rm -f $(EXECUTABLES)
