# ETAMU Physics Course Manuals

A comprehensive LaTeX infrastructure for creating professional physics course manuals. This repository provides templates, styles, and extensive tutorials for typesetting physics content.

# Important Note

If you encounter a bad path error from any of the pre-built code from CoPilot, it might be because I changed the repo name from "ETAMU-Physics-" to "ETAMU-Physics".  I removed the trailing - symbol. 

## Features

- **Complete LaTeX Infrastructure**: Ready-to-use build system with Makefiles
- **Professional Styling**: Custom style package for consistent physics document formatting
- **Comprehensive Content**: Instructor and student manuals for Level 1 and Level 2 physics
- **LaTeX Tutorials**: Extensive documentation and examples for physics typesetting
- **Modular Design**: Easily customizable and extensible structure

## Quick Start

```bash
# Clone the repository
git clone https://github.com/Blake-Head/ETAMU-Physics.git
cd ETAMU-Physics-

# Install LaTeX dependencies (Ubuntu/Debian)
make install-deps

# Build all manuals
make all

# Or build specific manuals
make level1           # All Level 1 manuals
make instructor       # All instructor manuals
```

## Repository Structure

```
├── README.md                 # This file
├── Makefile                  # Main build system
├── .gitignore               # LaTeX build artifacts
├── level-1/                 # Level 1 (Introductory) Physics
│   ├── instructor-manual/   # Complete instructor guide with solutions
│   ├── student-manual/      # Student version with problems
│   └── README.md           # Level 1 specific documentation
├── level-2/                 # Level 2 (Advanced) Physics
│   ├── instructor-manual/   # Advanced topics with detailed solutions
│   ├── student-manual/      # Advanced student materials
│   └── README.md           # Level 2 specific documentation
├── shared/                  # Shared resources
│   ├── styles/             # LaTeX style packages
│   ├── templates/          # Document templates
│   └── figures/            # Shared figures and images
└── docs/                   # Documentation and tutorials
    ├── latex-tutorials/    # Step-by-step LaTeX guides
    ├── build-instructions/ # Setup and build documentation
    └── README.md          # Documentation overview
```

## Course Content

### Level 1 Physics (Introductory)
- Mechanics (kinematics, dynamics, energy, momentum)
- Waves and Sound
- Basic Thermodynamics  
- Introduction to Electricity and Magnetism

### Level 2 Physics (Advanced)
- Advanced Electricity and Magnetism
- Electromagnetic Waves and Optics
- Modern Physics (Quantum Mechanics, Special Relativity)
- Advanced Thermodynamics and Statistical Mechanics

## LaTeX Features Demonstrated

The manuals include comprehensive examples and tutorials for:

- **Mathematical Notation**: Equations, vectors, derivatives using `physics` package
- **Units and Measurements**: Proper scientific notation with `siunitx`
- **Figures and Diagrams**: Professional diagrams with TikZ and PGFPlots
- **Circuit Diagrams**: Electronic circuits using CircuiTikZ
- **Problem Formatting**: Structured problem and solution environments
- **Cross-Referencing**: Equations, figures, and sections
- **Professional Typography**: Consistent styling and formatting

## Getting Started

1. **Prerequisites**: Install a LaTeX distribution (TeX Live, MacTeX, or MiKTeX)
2. **Quick Setup**: Run `make install-deps` on Ubuntu/Debian systems
3. **Build Manuals**: Use `make all` or navigate to specific directories
4. **Customization**: Edit `.tex` files and modify `shared/styles/etamu-physics.sty`
5. **Documentation**: Review `docs/` directory for detailed tutorials

## Documentation

- **[Quick Start Guide](docs/build-instructions/quick-start.md)**: Immediate setup instructions
- **[Mathematical Notation](docs/latex-tutorials/mathematical-notation.md)**: Physics equations and symbols
- **[Figures and Diagrams](docs/latex-tutorials/figures-and-diagrams.md)**: Creating physics diagrams
- **[Units and Measurements](docs/latex-tutorials/units-and-measurements.md)**: Scientific notation best practices

## Build System

The repository includes a comprehensive Makefile system:

```bash
make all              # Build all manuals
make level1           # Build Level 1 manuals only
make level2           # Build Level 2 manuals only  
make instructor       # Build all instructor manuals
make student          # Build all student manuals
make clean            # Remove build artifacts
make help             # Show available targets
```

## Customization

### Adding Content
1. Edit the relevant `.tex` files in manual directories
2. Add new figures to `shared/figures/` or local directories
3. Modify `shared/styles/etamu-physics.sty` for global style changes

### Creating New Manuals
1. Copy an existing manual structure
2. Modify the `.tex` content
3. Update the local Makefile if needed
4. Add appropriate documentation

## Requirements

- LaTeX distribution (TeX Live recommended)
- Required packages: `physics`, `siunitx`, `tikz`, `pgfplots`, `circuitikz`, `tcolorbox`
- Make utility for build system

## Contributing

1. Follow the existing structure and style conventions
2. Include LaTeX tutorial boxes for new techniques
3. Test builds with the provided Makefile system
4. Update documentation as needed

## License

This educational content is provided for academic use. Please respect copyright and attribution requirements when using or modifying these materials.
