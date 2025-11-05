# UPC Task/Report Class Repository (upctask)

This repository contains the official LaTeX document class for reports and tasks at the Universitat Politècnica de Catalunya (UPC). The class (`upctask.cls`) extends the standard article class and implements the required document structure, geometry, and visual identity (header, logo, and title page) for official submissions.

## Document Class: upctask.cls

### Class File Location

The class file is organized according to the TeX Directory Structure (TDS) for seamless integration into local TeX distributions:
```
tex/
└── latex/
    └── upctask/
        └── upctask.cls
```

### Usage

To utilize this class, your main LaTeX file (`main.tex`) must begin with:
```latex
\documentclass{upctask}
```

### Required Configuration

The class relies on the standard `upc.png` logo file for the header and title page. This image must be available in the path where your LaTeX compiler searches for graphics.

The class requires the following packages, which are automatically loaded:

- graphicx
- geometry
- fancyhdr
- anyfontsize

## Integration Methods

There are two recommended methods for integrating this class into your projects:

### Method 1: Local Project Integration (Recommended for Portability)

For a project that must be self-contained (e.g., for submission or sharing), simply copy the class file directly into your project's root directory.

1. Obtain the class file:
```bash
   cp path/to/this/repo/tex/latex/upctask/upctask.cls /path/to/your/project/
```

2. Compile the document. The compiler will find `upctask.cls` in the same directory as your main `.tex` file.

### Method 2: System-Wide Integration (Recommended for Personal Workflow)

For continuous, centralized use across all your local projects, you can register this repository as a custom TeX tree. This eliminates the need to copy the file repeatedly.

This method assumes a Linux environment using TeX Live, and leverages the `TEXINPUTS` environment variable to define an additional recursive search path.

1. **Clone the Repository**: Clone this repository to a stable, non-project location (e.g., in your home directory):
```bash
   cd ~
   git clone [repository-url] my-latex-stuff
```

2. **Update Shell Configuration**: Edit your shell configuration file (e.g., `~/.bashrc`, `~/.zshrc`) and add the following line to include the repository's tex directory in the LaTeX search path:
```bash
   export TEXINPUTS=~/my-latex-stuff/tex//:
```
   The double slash (`//`) enables recursive searching, allowing the compiler to find `upctask.cls` inside `tex/latex/upctask`.

3. **Apply Changes**: Restart your terminal or source the configuration file:
```bash
   source ~/.bashrc
```

After completing Method 2, any LaTeX document on your system can use `\documentclass{upctask}` without having the class file in the local directory.