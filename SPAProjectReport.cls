% SPAProjectReport.cls Adapted from
% _MScAstroDiss2015_cls.cls Thesis Dissertation class
% Modified by Jim Emerson from Ian Huston from original downloaded from
% http://www.doc.ic.ac.uk/~dwagner/downloads.php

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SPAProjectReport}
 
\DeclareOption{doublespacing}{\AtBeginDocument{\doublespacing}}
\DeclareOption{onehalfspacing}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{titlepagenumber=off}{\AtEndOfClass{\renewcommand{\titlepagestyle}{empty}}}
\DeclareOption{titlepagenumber=on}{\AtEndOfClass{\renewcommand{\titlepagestyle}{plain}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}

\ExecuteOptions{onehalfspacing,titlepagenumber=off,a4paper,12pt,twoside}

\ProcessOptions\relax

\LoadClass{scrreprt}
\RequirePackage{setspace}
\RequirePackage[left=4.0cm,right=2.0cm,top=3.50cm,bottom=3.0cm]{geometry}% MARGINS
 
\setkomafont{sectioning}{\rmfamily\bfseries}

\newcommand*{\@supervisor}{}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}

\newcommand*{\@ModuleName}{}
\newcommand*{\ModuleName}[1]{\gdef\@ModuleName{#1}}

\newcommand*{\@ModuleCredits}{}
\newcommand*{\ModuleCredits}[1]{\gdef\@ModuleCredits{#1}}

\newcommand*{\@Programme}{}
\newcommand*{\Programme}[1]{\gdef\@Programme{#1}}

\newcommand*{\@SubmissionDate}{}
\newcommand*{\SubmissionDate}[1]{\gdef\@SubmissionDate{#1}}

\newcommand*{\@declaration}{}
\newcommand*{\declaration}[1]{\gdef\@declaration{#1}}
 
\newcommand*{\@acknowledgements}{}
\newcommand*{\acknowledgements}[1]{\gdef\@acknowledgements{#1}}




\@ifclasswith{SPAProjectReport}{nopreamble}
   {
     }  % Only Title Page
   {   % Full Preamble for Submission
 \renewcommand*{\maketitle}{
    \begin{titlepage}
       \par
       \clearpage
       \thispagestyle{\titlepagestyle}
       \noindent\begin{minipage}[t]{\textwidth}
       \centering\large  
          School of Physics and Astronomy
  
          Queen Mary University of London
       \end{minipage}
 
       \null\vfill
       \begin{center}
          {\titlefont\huge \@title\par}
           \vskip 3em
          {\Large \lineskip 0.75em
           \begin{tabular}[t]{c}
                  \@author
           \end{tabular}\par}
           \vskip 1.5em
           \ifx\@SubmissionDate\@empty \else
              {\large \@SubmissionDate \par}
           \fi
           \vskip \z@ \@plus3fill
           \ifx\@supervisor\@empty \else
              {\Large Supervisor: \@supervisor \par}
           \fi
           \vskip 3em
           \ifx\@ModuleName\@empty \else
              {\large \@ModuleName \par}
           \fi
           \ifx\@ModuleCredits\@empty \else
               {\large \@ModuleCredits \par}
           \fi
           \vskip 2em
       \end{center}\par
       \noindent\begin{minipage}[b]{\textwidth}
          \centering
            Submitted in partial fulfilment of the requirements 
            for the degree of\\
              \@Programme \, from Queen Mary University of London  
       \end{minipage}
    
     \ifx\@declaration\@empty\else{
           \clearpage
%          \cleardoublepage
           \chapter*{Declaration}
           \thispagestyle{plain}
           \@declaration
           \par\vspace{3cm}
           \hfill\@author
           \clearpage 
%          \cleardoublepage
     }\fi

     \ifx\@acknowledgements\@empty\else{
          \clearpage %\cleardoublepage
          \chapter*{Acknowledgements}
          \thispagestyle{plain}
          \@acknowledgements
          \par\vspace{3cm}
          \hfill %\clearpage %\cleardoublepage
     }\fi

     \end{titlepage}
     } 

}

\renewenvironment{abstract}{\chapter*{Abstract}\thispagestyle{plain}}
\clearpage%{\cleardoublepage}


\usepackage{twoopt}
%% these macros turn citations into ADS clickers in dvi, pdf, html output
%% (EDP Sciences improved them in December 2012 to work also with pdflatex)
\makeatletter
 \newcommandtwoopt{\citeads}[3][][]{\href{http://adsabs.harvard.edu/abs/#3}%
   {\def\hyper@linkstart##1##2{}%
    \let\hyper@linkend\@empty\citealp[#1][#2]{#3}}}    %% Rutten, 2000
 \newcommandtwoopt{\citepads}[3][][]{\href{http://adsabs.harvard.edu/abs/#3}%
   {\def\hyper@linkstart##1##2{}%
    \let\hyper@linkend\@empty\citep[#1][#2]{#3}}}      %% (Rutten 2000)
 \newcommandtwoopt{\citetads}[3][][]{\href{http://adsabs.harvard.edu/abs/#3}%
   {\def\hyper@linkstart##1##2{}%
    \let\hyper@linkend\@empty\citet[#1][#2]{#3}}}      %% Rutten (2000)
 \newcommandtwoopt{\citeyearads}[3][][]%
   {\href{http://adsabs.harvard.edu/abs/#3}%
   {\def\hyper@linkstart##1##2{}%
    \let\hyper@linkend\@empty\citeyear[#1][#2]{#3}}}   %% 2000
\makeatother


\def\aj{AJ}%Astronomical Journal
\def\actaa{Acta Astron.}% Acta Astronomica
\def\araa{ARA\&A}%Annual Review of Astron and Astrophys
\def\apj{ApJ}% Astrophysical Journal
\def\apjl{ApJ}%Astrophysical Journal, Letters
\let\apjlett=\apjl
\def\apjs{ApJS}%Astrophysical Journal, Supplement
\let\apjsupp=\apjs
\def\ao{Appl.~Opt.}%Applied Optics
\let\applopt=\ao
\def\apss{Ap\&SS}%Astrophysics and Space Science
\def\aap{A\&A}% Astronomy and Astrophysics
\let\astap=\aap
\def\aapr{A\&A~Rev.}% Astronomy and Astrophysics Reviews
\def\aaps{A\&AS}%Astronomy and Astrophysics, Supplement
\def\azh{AZh}%Astronomicheskii Zhurnal
\def\baas{BAAS}% Bulletin of the AAS
\def\bac{Bull. astr. Inst. Czechosl.}%Bulletin of the Astronomical Institutes of Czechoslovakia 
\def\caa{Chinese Astron. Astrophys.}%Chinese Astronomy and Astrophysics
\def\cjaa{Chinese J. Astron. Astrophys.}% Chinese Journal of Astronomy and Astrophysics
\def\iaucirc{IAU~Circ.}% IAU Cirulars
\def\aplett{Astrophys.~Lett.}%Astrophysics Letters
\def\apspr{Astrophys.~Space~Phys.~Res.}% Astrophysics Space Physics Research
\def\bain{Bull.~Astron.~Inst.~Netherlands}%Bulletin Astronomical Institute of the Netherlands
\def\fcp{Fund.~Cosmic~Phys.}%Fundamental Cosmic Physics
\def\gca{Geochim.~Cosmochim.~Acta}% Geochimica Cosmochimica Acta
\def\grl{Geophys.~Res.~Lett.}%Geophysics Research Letters
\def\icarus{Icarus}% Icarus
\def\jcap{J. Cosmology Astropart. Phys.}% Journal of Cosmology and Astroparticle Physics
\def\jrasc{JRASC}% Journal of the RAS of Canada
\def\mnras{MNRAS}% MonthlyNoticesRoyalAstronomicalSociety
\def\memras{MmRAS}%Memoirs of the RAS
\def\na{New A}%New Astronomy
\def\nar{New A Rev.}%New Astronomy Review
\def\pasa{PASA}% Publications of the Astron. Soc. of Australia
\def\pasp{PASP}%Publications of the ASP
\def\pasj{PASJ}%Publications of the ASJ
\def\qjras{QJRAS}%Quarterly Journal of the RAS
\def\rmxaa{Rev. Mexicana Astron. Astrofis.}%Revista Mexicana de Astronomia y Astrofisica
\def\skytel{S\&T}%Sky and Telescope
\def\solphys{Sol.~Phys.}% Solar Physics
\def\sovast{Soviet~Ast.}%Soviet Astronomy
\def\ssr{Space~Sci.~Rev.}% Space Science Reviews
\def\zap{ZAp}%Zeitschrift fuer Astrophysik
\def\planss{Planet.~Space~Sci.}%Planetary Space Science
\def\procspie{Proc.~SPIE}% Proceedings of the SPIE
\def\memsai{Mem.~Soc.~Astron.~Italiana}%Mem. Societa Astronomica Italiana
\def\jgr{J.~Geophys.~Res.}%Journal of Geophysics Research
\let\applopt=\ao
% Physics - not all astro related
\def\nat{Nature}%Nature
\def\pra{Phys.~Rev.~A}%Physical Review A: General Physics
\def\prb{Phys.~Rev.~B}% Physical Review B: Solid State
\def\prc{Phys.~Rev.~C}% Physical Review C
\def\prd{Phys.~Rev.~D}% Physical Review D
\def\pre{Phys.~Rev.~E}% Physical Review E
\def\prl{Phys.~Rev.~Lett.}%Physical Review Letters
\def\physrep{Phys.~Rep.}%Physics Reports
\def\physscr{Phys.~Scr}% Physica Scripta
\def\jcp{J.~Chem.~Phys.}%Journal of Chemical Physics
\def\nphysa{Nucl.~Phys.~A}%Nuclear Physics A
\def\jqsrt{J.~Quant.~Spec.~Radiat.~Transf.}%Journal of Quantitiative Spectroscopy and Radiative Trasfer
%% for interpretation of ADS journal abbreviations in Bibliography and bibfile


\endinput
%%
%% End of file `SPAProjectReport.cls'.
