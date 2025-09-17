# Shared Resources

This directory contains shared resources used across all physics manuals.

## Contents

- `styles/` - LaTeX style files and packages
- `templates/` - Document templates for creating new manuals
- `figures/` - Shared figures and images used across multiple manuals

## Style Package

The main style package `etamu-physics.sty` provides:

- Consistent formatting for all manuals
- Physics-specific packages and commands
- Custom environments for tutorials, examples, and problems
- Professional color scheme and typography
- Header/footer styling

## Templates

- `manual-template.tex` - Basic template for creating new manuals
- Additional specialized templates can be added as needed

## Usage

To use the shared style in a new document:

```latex
\usepackage{../../shared/styles/etamu-physics}
```

Adjust the path as needed based on your document's location relative to the `shared/` directory.

## Customization

Global style changes should be made to `etamu-physics.sty` to ensure consistency across all manuals. For document-specific customizations, add them to the individual document preambles.