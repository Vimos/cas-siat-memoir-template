% ============================================================
% cas-siat-tr.cls
% SIAT Technical Report LaTeX Template
% Chinese Academy of Sciences, Shenzhen Institutes of Advanced Technology
% ============================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cas-siat-tr}[2026/04/10 SIAT Technical Report Template v1.0]

% Base class
\LoadClass[12pt,a4paper]{article}

% Encoding & Language
\RequirePackage[UTF8,heading=true]{ctex}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

% Geometry
\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.8cm,right=2.8cm]{geometry}

% Math & Fonts
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage{newtxtext,newtxmath}

% Graphics & Colors
\RequirePackage{graphicx,xcolor}
\definecolor{siatblue}{RGB}{0,82,147}
\definecolor{siatgray}{RGB}{100,100,100}

% Tables
\RequirePackage{booktabs,multirow,array}

% Algorithms
\RequirePackage[ruled,vlined]{algorithm2e}

% Links
\RequirePackage[colorlinks=true,linkcolor=siatblue,citecolor=siatblue,urlcolor=siatblue]{hyperref}

% Bibliography
\RequirePackage[numbers,sort&compress]{natbib}
\bibliographystyle{unsrtnat}

% Headers & Footers
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\color{siatgray}\leftmark}
\fancyhead[R]{\small\color{siatgray}SIAT Technical Report~\siattrnumber}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}

% Lists
\RequirePackage{enumitem}
\setlist{nosep}

% Captions
\RequirePackage{caption}
\captionsetup{font=small,labelfont=bf}

% Code listings
\RequirePackage{listings}
\lstset{
  basicstyle=\small\ttfamily,
  keywordstyle=\color{siatblue}\bfseries,
  commentstyle=\color{siatgray},
  breaklines=true,
  frame=single,
  numbers=left,
  numberstyle=\tiny\color{siatgray}
}

% Title Block Macros
\newcommand{\siattrnumber}[1]{}
\newcommand{\trnumber}[1]{\renewcommand{\siattrnumber}{#1}}
\newcommand{\trdate}[1]{\renewcommand{\@trdate}{#1}}
\newcommand{\@trdate}{\today}

% Custom Maketitle
\renewcommand{\maketitle}{%
  \begin{titlepage}
    \begin{center}
      \vspace*{1cm}
      {\Large\bfseries\color{siatblue} 中国科学院深圳先进技术研究院}\\[0.3cm]
      {\large\color{siatgray} Shenzhen Institutes of Advanced Technology\\Chinese Academy of Sciences}\\[1.5cm]
      
      \rule{\textwidth}{1.5pt}\\[0.6cm]
      {\LARGE\bfseries Technical Report}\\[0.3cm]
      {\large Report No.~\siattrnumber}\\[0.6cm]
      \rule{\textwidth}{1.5pt}\\[2cm]
      
      {\Huge\bfseries\color{siatblue} \@title}\\[2cm]
      
      {\Large \@author}\\[1.5cm]
      
      {\large \@trdate}
      
      \vfill
      
      {\small\color{siatgray} 
        SIAT$\cdot$Technical Report Series\\
        http://www.siat.ac.cn
      }
    \end{center}
  \end{titlepage}
}

% Abstract environments
\newenvironment{trabstract}[1]%
  {\noindent\textbf{Abstract:}\quad\ignorespaces}%
  {}
\newenvironment{trabstractcn}[1]%
  {\noindent\textbf{摘要：}\quad\ignorespaces}%
  {}
\newcommand{\trkeywords}[1]{\par\vspace{0.5em}\noindent\textbf{Keywords:} #1}
\newcommand{\trkeywordscn}[1]{\par\vspace{0.5em}\noindent\textbf{关键词：} #1}
