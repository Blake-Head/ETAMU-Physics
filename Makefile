# Makefile for ETAMU Physics Manuals
# Usage: make [target]
# Targets: all, level1, level2, instructor, student, clean, help

.PHONY: all level1 level2 instructor student clean help

# Default target
all: level1 level2

# Level 1 manuals
level1: level1-instructor level1-student

level1-instructor:
	@echo "Building Level 1 Instructor Manual..."
	@cd level-1/instructor-manual && make

level1-student:
	@echo "Building Level 1 Student Manual..."
	@cd level-1/student-manual && make

# Level 2 manuals
level2: level2-instructor level2-student

level2-instructor:
	@echo "Building Level 2 Instructor Manual..."
	@cd level-2/instructor-manual && make

level2-student:
	@echo "Building Level 2 Student Manual..."
	@cd level-2/student-manual && make

# Build all instructor manuals
instructor: level1-instructor level2-instructor

# Build all student manuals
student: level1-student level2-student

# Clean all build artifacts
clean:
	@echo "Cleaning build artifacts..."
	@find . -name "*.aux" -delete
	@find . -name "*.log" -delete
	@find . -name "*.out" -delete
	@find . -name "*.toc" -delete
	@find . -name "*.lof" -delete
	@find . -name "*.lot" -delete
	@find . -name "*.synctex.gz" -delete
	@find . -name "*.fdb_latexmk" -delete
	@find . -name "*.fls" -delete
	@find . -name "*.bbl" -delete
	@find . -name "*.blg" -delete
	@rm -rf build/ output/

# Install LaTeX dependencies (Ubuntu/Debian)
install-deps:
	@echo "Installing LaTeX dependencies..."
	sudo apt-get update
	sudo apt-get install -y texlive-latex-extra texlive-science texlive-pictures texlive-math-extra texlive-fonts-extra

# Help target
help:
	@echo "ETAMU Physics Manuals Build System"
	@echo ""
	@echo "Available targets:"
	@echo "  all          - Build all manuals (default)"
	@echo "  level1       - Build all Level 1 manuals"
	@echo "  level2       - Build all Level 2 manuals"
	@echo "  instructor   - Build all instructor manuals"
	@echo "  student      - Build all student manuals"
	@echo "  clean        - Remove all build artifacts"
	@echo "  install-deps - Install required LaTeX packages"
	@echo "  help         - Show this help message"