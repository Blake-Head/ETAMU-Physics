# LaTeX Physics Tutorial: Units and Measurements

## Overview

The `siunitx` package provides comprehensive support for typesetting physical quantities, units, numbers, and measurements. This tutorial covers best practices for scientific notation in physics documents.

## Basic Setup

```latex
\usepackage{siunitx}

% Configure siunitx options
\sisetup{
    detect-all,                    % Detect font settings
    per-mode=symbol,              % Use / instead of per
    range-phrase = \text{ to },   % Range connector
    range-units = single,         % Single unit for ranges
    separate-uncertainty = true,   % Separate ± from uncertainty
    multi-part-units = single     % Single unit for products
}
```

## Basic Usage

### Simple Quantities

```latex
% Basic quantity with unit
\SI{9.8}{\meter\per\second\squared}     % 9.8 m/s²
\SI{3.0e8}{\meter\per\second}           % 3.0 × 10⁸ m/s
\SI{6.626e-34}{\joule\second}           % 6.626 × 10⁻³⁴ J⋅s

% Just numbers (with proper formatting)
\num{6.022e23}                          % 6.022 × 10²³
\num{1.602176634e-19}                   % 1.602 176 634 × 10⁻¹⁹

% Just units
\si{\meter\per\second}                  % m/s
\si{\kilogram\meter\squared\per\second\cubed}  % kg⋅m²/s³
```

### Scientific Notation

```latex
% Proper scientific notation
\SI{1.602e-19}{\coulomb}               % 1.602 × 10⁻¹⁹ C
\SI{9.109e-31}{\kilogram}              % 9.109 × 10⁻³¹ kg
\SI{1.381e-23}{\joule\per\kelvin}      % 1.381 × 10⁻²³ J/K

% Large numbers
\SI{6.022e23}{\per\mole}               % 6.022 × 10²³ mol⁻¹
\SI{3.0e8}{\meter\per\second}          % 3.0 × 10⁸ m/s
```

## Common Physics Units

### Mechanical Units

```latex
% Length, mass, time
\si{\meter}                    % m
\si{\kilogram}                 % kg  
\si{\second}                   % s
\si{\gram}                     % g
\si{\centi\meter}              % cm
\si{\milli\meter}              % mm

% Derived mechanical units
\si{\meter\per\second}         % m/s
\si{\meter\per\second\squared} % m/s²
\si{\newton}                   % N
\si{\joule}                    % J
\si{\watt}                     % W
\si{\pascal}                   % Pa
```

### Electromagnetic Units

```latex
% Electric quantities
\si{\coulomb}                  % C
\si{\ampere}                   % A
\si{\volt}                     % V
\si{\ohm}                      % Ω
\si{\farad}                    % F

% Magnetic quantities
\si{\tesla}                    % T
\si{\weber}                    % Wb
\si{\henry}                    % H

% Complex units
\si{\volt\per\meter}           % V/m
\si{\ampere\per\meter}         % A/m
\si{\coulomb\per\kilogram}     % C/kg
```

### Modern Physics Units

```latex
% Energy units
\si{\electronvolt}             % eV
\si{\kilo\electronvolt}        % keV
\si{\mega\electronvolt}        % MeV
\si{\giga\electronvolt}        % GeV

% Quantum mechanics
\si{\joule\second}             % J⋅s (for ℏ)
\si{\kilogram\meter\squared\per\second}  % kg⋅m²/s (angular momentum)

% Temperature
\si{\kelvin}                   % K
\si{\celsius}                  % °C
```

## Ranges and Uncertainties

### Ranges

```latex
% Temperature range
\SIrange{20}{25}{\celsius}              % 20 °C to 25 °C

% Frequency range  
\SIrange{1}{100}{\kilo\hertz}           % 1 kHz to 100 kHz

% Custom range phrase
\SIrange[range-phrase=--]{0}{10}{\meter} % 0 m--10 m
```

### Uncertainties

```latex
% Standard uncertainty notation
\SI{9.8 +- 0.1}{\meter\per\second\squared}  % 9.8 ± 0.1 m/s²
\SI{1.602(21)e-19}{\coulomb}                % 1.602(21) × 10⁻¹⁹ C

% Separate uncertainty
\SI[separate-uncertainty=true]{1.23 +- 0.05}{\meter}  % 1.23 ± 0.05 m
```

## Mathematical Expressions with Units

### In Equations

```latex
% Proper way to include units in equations
\begin{align}
    F &= \SI{50}{\newton} \\
    m &= \SI{10}{\kilogram} \\
    a &= \frac{F}{m} = \frac{\SI{50}{\newton}}{\SI{10}{\kilogram}} = \SI{5}{\meter\per\second\squared}
\end{align}
```

### Unit Calculations

```latex
% Showing unit analysis
\begin{align}
    v &= \frac{\text{distance}}{\text{time}} \\
      &= \frac{\SI{100}{\meter}}{\SI{20}{\second}} \\
      &= \SI{5}{\meter\per\second}
\end{align}

% Complex unit derivation
\begin{align}
    P &= \frac{W}{t} = \frac{F \cdot d}{t} = \frac{ma \cdot d}{t} \\
      &= \frac{\SI{2}{\kilogram} \times \SI{3}{\meter\per\second\squared} \times \SI{10}{\meter}}{\SI{5}{\second}} \\
      &= \SI{12}{\watt}
\end{align}
```

## Tables with Units

### Proper table formatting

```latex
\begin{table}[htbp]
\centering
\caption{Experimental results}
\begin{tabular}{S[table-format=2.1] S[table-format=1.3] S[table-format=2.2]}
\toprule
{Time / \si{\second}} & {Velocity / \si{\meter\per\second}} & {Force / \si{\newton}} \\
\midrule
1.0  & 2.456 & 12.34 \\
2.5  & 6.123 & 30.56 \\
4.2  & 10.234 & 51.23 \\
5.8  & 14.567 & 72.84 \\
\bottomrule
\end{tabular}
\end{table}
```

## Physical Constants

### Common constants with proper formatting

```latex
% Speed of light
c = \SI{299792458}{\meter\per\second}

% Planck's constant
h = \SI{6.62607015e-34}{\joule\second}

% Elementary charge
e = \SI{1.602176634e-19}{\coulomb}

% Avogadro's number
N_A = \SI{6.02214076e23}{\per\mole}

% Boltzmann constant
k_B = \SI{1.380649e-23}{\joule\per\kelvin}

% Gravitational constant
G = \SI{6.67430e-11}{\meter\cubed\per\kilogram\per\second\squared}
```

## Advanced Features

### Custom Units

```latex
% Define custom units
\DeclareSIUnit\angstrom{\text{Å}}
\DeclareSIUnit\barn{b}
\DeclareSIUnit\gauss{G}

% Use custom units
\SI{1.5}{\angstrom}     % 1.5 Å
\SI{10}{\barn}          % 10 b
\SI{0.5}{\tesla} = \SI{5000}{\gauss}  % 0.5 T = 5000 G
```

### Unit Abbreviations

```latex
% When space is limited, use abbreviations
\si{\m\per\s}          % m/s (instead of \meter\per\second)
\si{\kg\m\squared\per\s\cubed}  % kg⋅m²/s³

% For very common units
\si{\N}                % N (Newton)
\si{\J}                % J (Joule)  
\si{\W}                % W (Watt)
```

## Best Practices

### Do's

```latex
% ✓ Always use siunitx for units
The speed is \SI{25}{\meter\per\second}.

% ✓ Separate numbers and units properly
We measured \SI{3.2}{\centi\meter}.

% ✓ Use scientific notation for very large/small numbers
Avogadro's number is \SI{6.022e23}{\per\mole}.

% ✓ Include uncertainties when appropriate
The length is \SI{15.2 +- 0.3}{\centi\meter}.
```

### Don'ts

```latex
% ✗ Don't use text mode for units
The speed is 25 m/s.

% ✗ Don't forget spaces between number and unit
The length is 15.2cm.

% ✗ Don't use inconsistent notation
Some values: 10 m/s, 5 \si{\meter\per\second}, 3 m·s⁻¹

% ✗ Don't use math mode for units
The force is $10 N$.
```

## Complete Example

```latex
\documentclass{article}
\usepackage{siunitx}
\usepackage{booktabs}

\sisetup{
    detect-all,
    per-mode=symbol,
    separate-uncertainty=true
}

\begin{document}

\section{Experimental Results}

We measured the acceleration due to gravity by dropping objects from various heights. The theoretical value is \SI{9.81}{\meter\per\second\squared}.

\begin{table}[htbp]
\centering
\caption{Drop test results}
\begin{tabular}{S[table-format=2.1] S[table-format=1.3] S[table-format=2.2]}
\toprule
{Height / \si{\meter}} & {Time / \si{\second}} & {Calculated $g$ / \si{\meter\per\second\squared}} \\
\midrule
1.0  & 0.452 & 9.78 \\
2.0  & 0.639 & 9.79 \\
3.0  & 0.782 & 9.83 \\
5.0  & 1.010 & 9.80 \\
\bottomrule
\end{tabular}
\end{table}

Our average result is \SI{9.80 +- 0.02}{\meter\per\second\squared}, which agrees well with the accepted value within experimental uncertainty.

\end{document}
```

This produces properly formatted scientific text with consistent unit notation throughout the document.