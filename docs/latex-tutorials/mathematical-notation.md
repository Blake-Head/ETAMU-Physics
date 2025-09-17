# LaTeX Physics Tutorial: Mathematical Notation

## Overview

This tutorial covers essential LaTeX techniques for typesetting physics mathematics, including equations, vectors, derivatives, and special symbols.

## Basic Equations

### Inline vs Display Math

```latex
% Inline math (within text)
The energy is $E = mc^2$ where $c$ is the speed of light.

% Display math (on separate line)
\[ E = mc^2 \]

% Numbered equations
\begin{equation}
    F = ma \label{eq:newton-second}
\end{equation}
```

### Multiple Equations

```latex
% Aligned equations (numbered)
\begin{align}
    v &= v_0 + at \label{eq:velocity} \\
    x &= x_0 + v_0 t + \frac{1}{2}at^2 \label{eq:position}
\end{align}

% Aligned equations (no numbers)
\begin{align*}
    \sin^2\theta + \cos^2\theta &= 1 \\
    e^{i\pi} + 1 &= 0
\end{align*}
```

## Vector Notation

The `physics` package provides excellent vector commands:

```latex
\usepackage{physics}

% Vector notation
\vect{F}           % Bold vector F
\uvect{n}          % Unit vector n (with hat)
\magnitude{\vect{v}} % Magnitude |v|

% Cross and dot products
\vect{A} \cdot \vect{B}    % Dot product
\vect{A} \times \vect{B}   % Cross product
```

## Derivatives and Integrals

```latex
% Ordinary derivatives
\dv{x}{t}          % dx/dt
\dv[2]{x}{t}       % d²x/dt²
\dv[n]{f}{x}       % nth derivative

% Partial derivatives
\pdv{f}{x}         % ∂f/∂x
\pdv{f}{x}{y}      % ∂²f/∂x∂y
\pdv[2]{f}{x}      % ∂²f/∂x²

% Integrals
\int_0^{\infty} f(x) \dd{x}     % Definite integral with dx
\oint \vect{E} \cdot \dd{\vect{A}}  % Closed line integral
```

## Greek Letters and Special Symbols

```latex
% Greek letters (common in physics)
\alpha, \beta, \gamma, \delta, \epsilon
\theta, \lambda, \mu, \nu, \pi, \rho, \sigma
\phi, \chi, \psi, \omega

% Capital Greek letters
\Gamma, \Delta, \Theta, \Lambda, \Pi, \Sigma
\Phi, \Psi, \Omega

% Special symbols
\hbar              % Reduced Planck constant
\nabla             % Del operator
\partial           % Partial derivative symbol
\infty             % Infinity
\approx            % Approximately equal
\propto            % Proportional to
```

## Subscripts and Superscripts

```latex
% Basic sub/superscripts
E_0                % E subscript 0
x^2                % x squared
E_k^{initial}      % Multiple characters need braces

% Complex expressions
\sum_{i=1}^{n} a_i x_i^2
\int_0^{\infty} e^{-\alpha x} \dd{x}
```

## Fractions and Square Roots

```latex
% Fractions
\frac{1}{2}mv^2    % Standard fraction
\dfrac{a}{b}       % Display-style fraction (larger)

% Square roots
\sqrt{2}           % Square root
\sqrt[3]{8}        % Cube root
\sqrt{a^2 + b^2}   % Complex expression
```

## Matrices and Arrays

```latex
% Matrices
\begin{pmatrix}
    a & b \\
    c & d
\end{pmatrix}

% Determinants
\begin{vmatrix}
    a & b \\
    c & d
\end{vmatrix}

% Arrays for complex layouts
\begin{array}{cc}
    E_x & = k_e \frac{q}{r^2} \cos\theta \\
    E_y & = k_e \frac{q}{r^2} \sin\theta
\end{array}
```

## Common Physics Equations

Here are properly formatted versions of common physics equations:

```latex
% Newton's second law
\sum \vect{F} = m\vect{a}

% Kinematic equations
\begin{align}
    v &= v_0 + at \\
    x &= x_0 + v_0 t + \frac{1}{2}at^2 \\
    v^2 &= v_0^2 + 2a(x - x_0)
\end{align}

% Maxwell's equations
\begin{align}
    \nabla \cdot \vect{E} &= \frac{\rho}{\epsilon_0} \\
    \nabla \cdot \vect{B} &= 0 \\
    \nabla \times \vect{E} &= -\frac{\partial \vect{B}}{\partial t} \\
    \nabla \times \vect{B} &= \mu_0\vect{J} + \mu_0\epsilon_0\frac{\partial \vect{E}}{\partial t}
\end{align}

% Schrödinger equation
i\hbar \frac{\partial}{\partial t} \ket{\psi} = \hat{H} \ket{\psi}
```

## Best Practices

1. **Use packages**: Load `amsmath`, `physics`, and `siunitx` for comprehensive math support
2. **Consistent notation**: Define custom commands for frequently used symbols
3. **Proper spacing**: Let LaTeX handle spacing in math mode
4. **Clear structure**: Use `align` for multi-line equations
5. **Labels and references**: Label important equations for cross-referencing

## Common Mistakes to Avoid

- Don't use `*` for multiplication in math mode (use `\cdot` or just space)
- Don't forget braces for multi-character sub/superscripts
- Don't use text mode functions in math mode (use `\sin`, `\cos`, etc.)
- Don't manually add spaces in math mode (use `\,`, `\:`, `\;` if needed)