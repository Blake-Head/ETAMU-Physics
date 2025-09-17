# Quick Start Guide

## Prerequisites

You need a LaTeX distribution installed on your system. The manuals are designed to work with:

- **Linux/Ubuntu**: `sudo apt-get install texlive-latex-extra texlive-science texlive-pictures texlive-math-extra texlive-fonts-extra`
- **macOS**: Install MacTeX from https://www.tug.org/mactex/
- **Windows**: Install MiKTeX from https://miktex.org/

## Building All Manuals

From the repository root:

```bash
# Install dependencies (Ubuntu/Debian)
make install-deps

# Build all manuals
make all

# Or build specific levels/types
make level1           # All Level 1 manuals
make level2           # All Level 2 manuals
make instructor       # All instructor manuals
make student          # All student manuals
```

## Building Individual Manuals

Navigate to any manual directory and run:

```bash
cd level-1/instructor-manual
make
```

This will generate the PDF in the same directory.

## Customizing Content

1. **Edit LaTeX files**: Modify the `.tex` files in each manual directory
2. **Add figures**: Place images in the appropriate manual directory or `shared/figures/`
3. **Modify styling**: Edit `shared/styles/etamu-physics.sty` for global style changes
4. **Add packages**: Modify the style file or individual document preambles

## Troubleshooting

- **Missing packages**: Run `make install-deps` or install packages manually
- **Build errors**: Check that all file paths are correct and packages are installed
- **Cross-references**: Run `make` twice to resolve all references

## File Structure

```
repository/
├── Makefile              # Main build system
├── level-1/              # Level 1 course materials
│   ├── instructor-manual/
│   └── student-manual/
├── level-2/              # Level 2 course materials
│   ├── instructor-manual/
│   └── student-manual/
├── shared/               # Shared resources
│   ├── styles/           # LaTeX style files
│   ├── templates/        # Document templates
│   └── figures/          # Shared figures
└── docs/                 # Documentation
```