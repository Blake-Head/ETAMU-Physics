# Level 2 Physics Course

This directory contains materials for the Level 2 (intermediate) physics course.

## Structure

- `instructor-manual/` - Complete instructor manual with advanced solutions and LaTeX examples
- `student-manual/` - Student version covering advanced physics topics

## Topics Covered

- Advanced Electricity and Magnetism
- Electromagnetic Waves and Optics
- Modern Physics (Quantum Mechanics, Special Relativity)
- Advanced Thermodynamics and Statistical Mechanics

## Building the Manuals

From the repository root:
```bash
make level2              # Build both instructor and student manuals
make level2-instructor   # Build only instructor manual
make level2-student      # Build only student manual
```

From this directory:
```bash
cd instructor-manual && make   # Build instructor manual
cd student-manual && make      # Build student manual
```

## LaTeX Features Demonstrated

The Level 2 manuals include advanced examples:
- Complex mathematical derivations
- Advanced circuit analysis with CircuiTikZ
- Wave diagrams and electromagnetic field visualizations
- Quantum mechanics notation
- Special relativity spacetime diagrams
- Statistical plots and data analysis