# This makefile is inspired from: https://stackoverflow.com/questions/7004702/how-can-i-create-a-makefile-for-c-projects-with-src-obj-and-bin-subdirectories

# project name (generate executable with this name)
TARGET   = ej1a

COMPILER = iverilog
CFLAGS   = 

# change these to proper directories where each file should be
SRCDIR   = src
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/*.v)

OBJECTS  := $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
rm       = rm -f

all: $(BINDIR)/$(TARGET) $(SOURCES)

$(BINDIR)/$(TARGET): $(SOURCES)
	@mkdir -p bin
	@$(COMPILER) $(SOURCES) $(CFLAGS) -o $@
	@echo "Compilation complete - bin/ej1a!"

.PHONY: clean
clean: 
	@$(rm) $(BINDIR)/$(TARGET)
	@echo "Output files removed!"

.PHONY: clean
purge: clean
	@$(rm) -rf $(BINDIR)
	@echo "Purge complete!"
