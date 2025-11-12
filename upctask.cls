 \NeedsTeXFormat{LaTeX2e}
\ProvidesClass{upctask}[2025/10/23 UPC Task Template]

\LoadClass[a4paper,12pt]{article}

% Required packages
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{anyfontsize}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{booktabs}
\RequirePackage{tikz}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage[english]{babel}
\RequirePackage{xcolor}
\input{template/matlab-snippet}

\graphicspath{{template/img/}}

% Page geometry
\geometry{
top=2cm,
bottom=3cm,
left=1.5cm,
right=1.5cm
}
\setlength{\headheight}{50pt} % enough for logo
\setlength{\headsep}{0.5cm}

% Header and footer
\pagestyle{fancy}
\fancyhead[L]{\includegraphics[height=1.5cm]{template/img/etseib.png}}
\fancyfoot[C]{\thepage}

% Define title page
\renewcommand{\maketitle}{
\begin{titlepage}
\centering
\vspace*{2cm}
\includegraphics[width=4cm]{template/img/etseib.png}\\[1cm]
{\Huge\bfseries \@title}\\[0.5cm]
{\Large \@author}\\[0.3cm]
{\large \@date}
\vfill
{\large Universitat Politècnica de Catalunya}\\[1.5cm]
\end{titlepage}

}

