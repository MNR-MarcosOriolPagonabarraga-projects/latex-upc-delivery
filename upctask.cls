% upctask.cls — UPC LaTeX class for task/report delivery
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{upctask}[2025/10/23 UPC Task Template]

\LoadClass[a4paper,12pt]{article}

% Required packages
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{anyfontsize}

% Page geometry
\geometry{margin=2cm}
\setlength{\headheight}{50pt}  % enough for logo
\setlength{\headsep}{0.5cm} 

% Header and footer
\pagestyle{fancy}
\fancyhead[L]{\includegraphics[height=1.2cm]{upc.png}}
\fancyfoot[C]{\thepage}

% Define title page
\renewcommand{\maketitle}{
  \begin{titlepage}
    \centering
    \vspace*{2cm}
    \includegraphics[width=4cm]{upc.png}\\[1cm]
    {\Huge\bfseries \@title}\\[0.5cm]
    {\Large \@author}\\[0.3cm]
    {\large \@date}
    \vfill
    {\large Universitat Politècnica de Catalunya}\\[1.5cm]
  \end{titlepage}
}
