\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cenarticle}[2023/05/14 Ciencia e Natura Article Class]

% Class options
\newif\if@english
\newif\if@portuguese

\DeclareOption{english}{\@englishtrue\@portuguesefalse}
\DeclareOption{portuguese}{\@englishfalse\@portuguesetrue}

\ExecuteOptions{english} % Default option
\ProcessOptions\relax

\LoadClass[twoside, a4paper, 12pt]{article}

\RequirePackage[left=20mm,
            right=20mm,
            top=12.5mm,
            bottom=15mm,
            includehead,
            includefoot,
            ]{geometry}
%
\if@english
  \RequirePackage[english]{babel}
  \RequirePackage[natbibapa]{apacite}
\else
  \RequirePackage[portuguese]{babel}
  \RequirePackage[authoryear]{natbib}
\fi
%
\RequirePackage{xcolor}

\RequirePackage{tikz}

\RequirePackage{etoolbox}

\RequirePackage{soul}

\RequirePackage{titling}
\RequirePackage{fontawesome5}
\RequirePackage{xifthen}
\RequirePackage[hidelinks]{hyperref}

\RequirePackage{fancyhdr} % Headers and footers

\RequirePackage{indentfirst}

\RequirePackage{ragged2e}

%
%----------------------------------------------------------------------------------------
%	TEMPLATE CONFIGURATIONS (not for authors)
%----------------------------------------------------------------------------------------
%
\pagestyle{fancy} % All pages have headers and footers
\setlength{\headheight}{10mm}
\setlength{\headsep}{5mm} 
\setlength{\footskip}{4mm}
\addtolength{\topmargin}{0mm}
%
%----------------------------------------------------------------------------------------
%	HEADER
%----------------------------------------------------------------------------------------
%
\if@english
  \def\openacessfile{images/open-access.png}
\else
  \def\openacessfile{images/acesso-aberto.png}
\fi

\if@portuguese
  \def\submittedtext{Submissão}
  \def\approvedtext{Aprovação}
  \def\publishedtext{Publicação}
\else
  \def\submittedtext{Submitted}
  \def\approvedtext{Approved}
  \def\publishedtext{Published}
\fi
%
\fancyhead[EL]{\thepage~~\textbar{}~\shortHeaderTitle} % 
\fancyhead[OR]{\shortHeaderAuthors~\textbar{}~~\thepage} % 
\fancyhead[ER]{} % 
\fancyhead[OL]{} % 
%
\renewcommand\headrule{\vspace{-1mm}\noindent\makebox[\linewidth]{\color{cncolor}\rule{\linewidth}{1.5pt}}}
%
\newcommand{\issn}[1]{\def\issn{#1}}
\newcommand{\volume}[1]{\def\volume{#1}}
\newcommand{\doi}[1]{\def\doi{#1}}
\newcommand{\eJournal}[1]{\def\eJournal{#1}}
\newcommand{\submitionDate}[1]{\def\submitionDate{#1}}
\newcommand{\approvalDate}[1]{\def\approvalDate{#1}}
\newcommand{\publishDate}[1]{\def\publishDate{#1}}
\newcommand{\custombullet}{\raisebox{1.3pt}{\tiny\textbullet}}
%
\newcommand{\cncoverheader}{
  \noindent\begin{tikzpicture}[remember picture, overlay]
    \begin{scope}[shift={(0,-10mm)}]
      \node[anchor=south west,inner sep=0mm] at (0, 0) {\includegraphics[height=25mm]{images/logo-ufsm.png}};
      \node[anchor=south,inner sep=0mm] at (\textwidth/2, 7mm) {\includegraphics[height=16mm]{images/logo-ciencia-e-natura.jpg}};
      \node[anchor=south east, inner sep=0mm] at (\textwidth, 9mm) {\includegraphics[height=17mm]{images/revista.jpg}};
      \node[left, anchor=east, inner sep = 0mm] at (\textwidth, 6mm) {\footnotesize ISSN \issn};
      \node[left, anchor=east, inner sep = 0mm] at (\textwidth, 1.5mm) {\includegraphics[height=4.5mm]{\openacessfile}};

      \draw[line width=1pt, cncolor] (-20mm, -1.5mm) -- (\paperwidth, -1.5mm);
      \draw node[anchor=north, inner sep=2mm] at (\textwidth / 2, 0) {\footnotesize Ci. e Nat., Santa Maria, v. \volume, \eJournal, 2022 \custombullet~\doi};
      \node[anchor=north, inner sep=2mm, yshift=-4mm] at (\textwidth / 2, 0) {\footnotesize \submittedtext: \submitionDate~\custombullet~\approvedtext: \approvalDate~\custombullet~\publishedtext: \publishDate};

      \draw[line width=1pt, cncolor] (-20mm, -10mm) -- (\paperwidth, -10mm);
    \end{scope}
  \end{tikzpicture}
 \par\vspace{14mm}
}
%
%----------------------------------------------------------------------------------------
%	FOOTER
%----------------------------------------------------------------------------------------
%
\if@portuguese
  \def\creativecommonstext{Artigo publicado por Ciência e Natura sob uma licença \href{https://creativecommons.org/licenses/by-nc/4.0/}{CC BY-NC-SA 4.0}.}
\else
  \def\creativecommonstext{Published by Ciência e Natura under a \href{https://creativecommons.org/licenses/by-nc/4.0/}{CC BY-NC-SA 4.0} license.}
\fi
%
\newcommand{\yearonfooter}[1]{\def\yearonfooter{#1}}
%
\fancyfoot{} % Blank out the default footer
\fancyfoot[C]{{\color{cncolor}\rule{90mm}{1.5pt}}\\[-3pt]{\footnotesize Ci. e Nat., Santa Maria, v.\volume, \eJournal, \yearonfooter}}
%
\newcommand{\cncoverfooter}{
  \noindent\begin{tikzpicture}[remember picture, overlay]
    \begin{scope}[shift={(0,0)}]
      \draw[line width=1pt, cncolor] (0, 0) -- (\textwidth, 0);
      \node[anchor=north west,inner sep=0mm] at (0, -1.5mm) {\includegraphics[height=6.5mm]{images/creativecommons.png}};
      \node[anchor=west, inner sep=0mm] at (20mm, -5.0mm) {\footnotesize \creativecommonstext};
    \end{scope}
  \end{tikzpicture}
 \par\vspace{-7mm}
}
%
\definecolor{cncolor}{RGB}{0,102,153}
\setul{3pt}{2.5pt}
\setulcolor{cncolor}

\newcommand{\cenSection}[1]{\def\cenSection{\flushleft{\small#1}}}

\newcommand{\englishTitle}[1]{\def\englishTitle{#1}}
\newcommand{\portugueseTitle}[1]{\def\portugueseTitle{#1}}

\newcommand{\orcid}[1]{\href{https://orcid.org/#1}{\textcolor[HTML]{A6CE39}{\faOrcid}}}

\newcommand{\authorinfo}[3][]{%
  \large
  \mbox{
    {\bf#2}% 
    {\ifthenelse{\equal{#3}{}}{}{\textsuperscript{~\bf#3}}}%
    {\ifthenelse{\equal{#1}{}}{}{\hspace{1.2pt}\orcid{#1}}}%
  }%
}

\newcommand{\affil}[1]{\def\affil{\par#1}}
\newcommand{\affiliation}[2]{\textsuperscript{\footnotesize #1}#2\par}

\newcommand{\portugueseAbstract}[1]{\def\portugueseAbstract{
  \flushleft
  {\bf RESUMO}\\[-8pt]
  {\color{cncolor}\rule{50mm}{1.5pt}}
  \par\nobreak\noindent\ignorespaces\justifying#1
}}
%
\newcommand{\englishAbstract}[1]{\def\englishAbstract{
  \flushleft
  {\bf ABSTRACT}\\[-8pt]
  {\color{cncolor}\rule{50mm}{1.5pt}}
  \par\nobreak\noindent\ignorespaces\justifying#1
}}
%
\newcommand{\englishKeywords}[1]{\def\englishKeywords{
\par\smallskip\noindent
  \small{\bf keywords:}~#1
}}
%
\newcommand{\portugueseKeywords}[1]{\def\portugueseKeywords{
\par\smallskip\noindent
  \small{\bf palavras-chave:}~#1
}}

\newcommand{\shortHeaderTitle}[1]{\def\shortHeaderTitle{#1}}
\newcommand{\shortHeaderAuthors}[1]{\def\shortHeaderAuthors{#1}}

\if@english
  \bibliographystyle{apalike}
\else
  \bibliographystyle{cen}
\fi

\newcommand{\coverpage}{
  \thispagestyle{empty}
  \cncoverheader
  
  \cenSection
  
  \centering
  \vspace{8mm}
  \if@english
    {\Large\bf\englishTitle}\\[5mm]
    {\large\portugueseTitle}
  \else
    {\Large\bf\portugueseTitle}\\[5mm]
    {\large\englishTitle}
  \fi\\[7mm]  

  \theauthor\par\vspace{4mm}
  \affil\par\vspace{5mm}

  \if@english
    \englishAbstract
    \englishKeywords\\[4mm]
    \portugueseAbstract
    \portugueseKeywords
  \else
    \portugueseAbstract
    \portugueseKeywords\\[4mm]

    \englishAbstract
    \englishKeywords
  \fi
 
  \vfill
  \cncoverfooter
  \clearpage

  \setlength{\parskip}{12pt}
  \setlength{\parindent}{36pt} 
}

\makeatletter
\renewcommand*{\@seccntformat}[1]{\csname the#1\endcsname\hspace{3mm}}
\makeatother


