# LaTeX Physics Tutorial: Creating Figures and Diagrams

## Overview

This tutorial covers creating physics diagrams using TikZ, PGFPlots, and CircuiTikZ. These tools allow you to create professional-quality figures directly in LaTeX.

## Basic TikZ Setup

```latex
\usepackage{tikz}
\usepackage{pgfplots}
\pgfplotsset{compat=1.15}

% Useful TikZ libraries
\usetikzlibrary{arrows.meta, decorations.markings, patterns}
```

## Simple Diagrams

### Basic Shapes and Lines

```latex
\begin{tikzpicture}
    % Coordinate system
    \draw[->] (0,0) -- (4,0) node[right] {$x$};
    \draw[->] (0,0) -- (0,3) node[above] {$y$};
    
    % Basic shapes
    \draw (1,1) rectangle (3,2);
    \draw (2,2.5) circle (0.3);
    
    % Lines with arrows
    \draw[->, red, thick] (1.5,1.5) -- (2.5,1.5) node[above] {$\vect{F}$};
\end{tikzpicture}
```

### Force Diagrams

```latex
\begin{tikzpicture}
    % Object (box)
    \fill[gray!30] (0,0) rectangle (1,0.5);
    \draw[thick] (0,0) rectangle (1,0.5);
    
    % Forces
    \draw[->, red, thick] (0.5,0.5) -- (0.5,1.5) node[above] {$\vect{N}$};
    \draw[->, blue, thick] (0.5,0) -- (0.5,-1) node[below] {$m\vect{g}$};
    \draw[->, green, thick] (1,0.25) -- (2,0.25) node[right] {$\vect{F}_{applied}$};
    \draw[->, orange, thick] (0,0.25) -- (-0.8,0.25) node[left] {$\vect{f}$};
\end{tikzpicture}
```

## Physics-Specific Diagrams

### Inclined Plane

```latex
\begin{tikzpicture}
    % Inclined plane
    \draw[thick] (0,0) -- (4,2) -- (4,0) -- cycle;
    \fill[gray!20] (0,0) -- (4,2) -- (4,0) -- cycle;
    
    % Object on plane
    \fill[brown] (2,1) rectangle (2.5,1.25);
    \draw[thick] (2,1) rectangle (2.5,1.25);
    
    % Angle
    \draw (0.8,0) arc (0:26.57:0.8);
    \node at (1.2,0.2) {$\theta$};
    
    % Forces (components)
    \draw[->, red] (2.25,1.25) -- (2.25,2) node[above] {$\vect{N}$};
    \draw[->, blue] (2.25,1) -- (1.5,0.625) node[below left] {$mg\sin\theta$};
    \draw[->, green] (2.25,1) -- (2.25,0.2) node[below] {$mg\cos\theta$};
\end{tikzpicture}
```

### Projectile Motion

```latex
\begin{tikzpicture}[scale=0.8]
    % Trajectory
    \draw[thick, blue] plot[domain=0:4, samples=100] (\x, {2*\x - 0.3*\x*\x});
    
    % Ground
    \draw[thick] (0,0) -- (5,0);
    
    % Launch point
    \fill (0,0) circle (2pt);
    
    % Velocity vectors at different points
    \draw[->, red] (0,0) -- (1,0.8) node[above right] {$\vect{v}_0$};
    \draw[->, red] (2,1.2) -- (2.8,1.4) node[above] {$\vect{v}$};
    \draw[->, red] (3.5,0.6) -- (4,0.4) node[above right] {$\vect{v}_f$};
    
    % Angle
    \draw (0.3,0) arc (0:35:0.3);
    \node at (0.5,0.1) {$\theta_0$};
\end{tikzpicture}
```

## Circuit Diagrams with CircuiTikZ

```latex
\usepackage{circuitikz}

% Simple circuit
\begin{circuitikz}
    \draw (0,0) to[V, l=$V_s$] (0,2)
          to[R, l=$R_1$] (2,2)
          to[R, l=$R_2$] (4,2)
          to[short] (4,0)
          to[short] (0,0);
    
    % Current direction
    \draw[->, red] (1,2.3) to[short] (3,2.3);
    \node[red] at (2,2.6) {$I$};
\end{circuitikz}
```

## Plotting Graphs with PGFPlots

### Basic Function Plot

```latex
\begin{tikzpicture}
\begin{axis}[
    xlabel={$t$ (s)},
    ylabel={$x$ (m)},
    grid=major,
    width=10cm,
    height=6cm
]
    \addplot[blue, thick, domain=0:5] {2*x - 0.5*x^2};
    \addlegendentry{$x(t) = 2t - 0.5t^2$}
\end{axis}
\end{tikzpicture}
```

### Multiple Plots (Energy vs Position)

```latex
\begin{tikzpicture}
\begin{axis}[
    xlabel={Position $x$ (m)},
    ylabel={Energy (J)},
    legend pos=north west,
    grid=major
]
    \addplot[blue, thick, domain=0:4] {0.5*x^2};
    \addlegendentry{Potential Energy}
    
    \addplot[red, thick, domain=0:4] {8 - 0.5*x^2};
    \addlegendentry{Kinetic Energy}
    
    \addplot[green, thick, domain=0:4] {8};
    \addlegendentry{Total Energy}
\end{axis}
\end{tikzpicture}
```

### Data Plotting

```latex
\begin{tikzpicture}
\begin{axis}[
    xlabel={Voltage (V)},
    ylabel={Current (A)},
    grid=major
]
    \addplot[only marks, blue] coordinates {
        (1,0.021) (2,0.041) (3,0.062) (4,0.083) (5,0.103)
    };
    \addplot[red, thick] {0.02*x + 0.001};
    \addlegendentry{Data}
    \addlegendentry{Linear Fit}
\end{axis}
\end{tikzpicture}
```

## Advanced Techniques

### Wave Diagrams

```latex
\begin{tikzpicture}
    % Sine wave
    \draw[thick, blue] plot[domain=0:4*pi, samples=100] (\x, {sin(\x r)});
    
    % Axes
    \draw[->] (0,-1.5) -- (0,1.5) node[above] {$y$};
    \draw[->] (-0.5,0) -- (13,0) node[right] {$x$};
    
    % Wavelength indication
    \draw[<->, red] (0,-1.3) -- (2*pi,-1.3);
    \node[red] at (pi,-1.6) {$\lambda$};
    
    % Amplitude
    \draw[<->, green] (-0.3,0) -- (-0.3,1);
    \node[green] at (-0.7,0.5) {$A$};
\end{tikzpicture}
```

### Electric Field Lines

```latex
\begin{tikzpicture}
    % Positive charge
    \fill[red] (0,0) circle (3pt);
    \node[below] at (0,-0.3) {$+q$};
    
    % Field lines
    \foreach \angle in {0,30,60,90,120,150,180,210,240,270,300,330} {
        \draw[->, blue] (0,0) -- (\angle:2);
    }
    
    % Field strength indication
    \draw[thick, red] (2.5,0) circle (0.1);
    \node[right] at (2.7,0) {Strong field};
    \draw[thin, red] (3.5,0) circle (0.1);
    \node[right] at (3.7,0) {Weak field};
\end{tikzpicture}
```

## Best Practices

1. **Use consistent styling**: Define styles for common elements
2. **Scale appropriately**: Use the `scale` option or set explicit dimensions
3. **Add labels and legends**: Make diagrams self-explanatory
4. **Use colors meaningfully**: Different colors for different physical quantities
5. **Include units**: Always specify units in axis labels

## Useful TikZ Styles

```latex
% Define custom styles
\tikzset{
    force/.style={->, red, thick},
    velocity/.style={->, blue, thick},
    displacement/.style={->, green, thick},
    charge/.style={circle, fill=red, minimum size=6pt}
}

% Use in diagrams
\draw[force] (0,0) -- (1,1) node[above] {$\vect{F}$};
```

## Including External Images

Sometimes you need to include external images alongside your TikZ diagrams:

```latex
\begin{figure}[htbp]
    \centering
    \begin{subfigure}{0.45\textwidth}
        \includegraphics[width=\textwidth]{experimental-setup.png}
        \caption{Experimental setup}
    \end{subfigure}
    \hfill
    \begin{subfigure}{0.45\textwidth}
        \begin{tikzpicture}
            % Your TikZ diagram here
        \end{tikzpicture}
        \caption{Theoretical model}
    \end{subfigure}
    \caption{Comparison of experiment and theory}
\end{figure}
```

Remember to place image files in the same directory as your LaTeX file or specify the correct path.