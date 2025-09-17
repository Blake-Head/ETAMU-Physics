# Level 1 Physics Course

This directory contains materials for the Level 1 (introductory) physics course.

## Structure

- `instructor-manual/` - Complete instructor manual with solutions, teaching notes, and LaTeX examples
- `student-manual/` - Student version of the manual with problems and exercises

## Topics Covered

- Mechanics (kinematics, dynamics, energy, momentum)
- Waves and Sound
- Basic Thermodynamics
- Introduction to Electricity and Magnetism

## Building the Manuals

From the repository root:
```bash
make level1              # Build both instructor and student manuals
make level1-instructor   # Build only instructor manual
make level1-student      # Build only student manual
```

From this directory:
```bash
cd instructor-manual && make   # Build instructor manual
cd student-manual && make      # Build student manual
```

## LaTeX Features Demonstrated

The manuals include examples and tutorials for:
- Mathematical equations and physics notation
- Figure creation with TikZ and PGFPlots
- Circuit diagrams with CircuiTikZ
- SI units with siunitx package
- Problem and solution formatting
- Cross-referencing and citations