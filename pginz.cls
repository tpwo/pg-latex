\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pginz}

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[10pt,a4paper,twoside]{report}

\RequirePackage[inner=3.5cm,outer=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{setspace}
\onehalfspacing % interlinia 1.5
\setlength{\parindent}{1.25cm}
\RequirePackage{indentfirst}

% \renewcommand{\familydefault}{\sfdefault}
% \normalfont

\RequirePackage[utf8]{inputenc}
\RequirePackage{polski}
\RequirePackage[polish, english]{babel}
\RequirePackage{pdfpages}
\RequirePackage{subcaption}
\RequirePackage{newtxtext, newtxmath} %lepiej wyglądające nagłówki

\RequirePackage[titletoc,title]{appendix}
\RequirePackage{titlesec}
\RequirePackage[T1]{fontenc}
\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{csquotes}
% \RequirePackage[backend=biber, style=numeric, sorting=none]{biblatex}
\RequirePackage{graphicx}
\graphicspath{{./images/},{./photos/},{./test_results/},{./results_comparison/}}
\RequirePackage{microtype}

%*************\
\RequirePackage{epstopdf} %do dołączania obrazków w formacie eps
\RequirePackage{hyperref} % hiperłącza wewnętrzne (cytowania, odnośniki do obrazków, równań)
\RequirePackage{xcolor,listings} %listingi
\RequirePackage[font=small, labelsep=period]{caption} %ustawienie czcionki 9pt na podpisach
\captionsetup[table]{justification=RaggedRight, singlelinecheck=false, format=hang, name=Table, position=above, labelfont=bf} %ustawienie podpisów tabel
\captionsetup[figure]{justification=centering, name=Fig., labelfont=bf}
\RequirePackage{enumitem} %to, czego brakowało przy symbolach
\RequirePackage{pifont}  % Ptaszki i krzyżyki
\newcommand{\cmark}{\ding{51}} % Definicja ptaszka
\newcommand{\xmark}{\ding{55}} % Definicja krzyżyka
\RequirePackage{multirow} % Do wielokolumnowych, wielowierszowych komórek w tabeli
%*************


\titleformat{\chapter}[hang]
{\normalfont\fontsize{12}{15}\bfseries\uppercase}{\thechapter.}{1em}{}
\titlespacing*{\chapter}{0pt}{12pt}{6pt}

\titleformat{\section}[hang]
{\normalfont\fontsize{10}{12}\bfseries\itshape}{\thesection.}{0.5em}{}
\titlespacing*{\section}{0pt}{12pt}{6pt}

\titleformat{\subsection}[hang]
{\normalfont\fontsize{10}{12}\itshape}{\thesubsection.}{0.5em}{}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}

\titleformat{\subsubsection}[hang]
{\normalfont\fontsize{10}{12}\itshape}{\thesubsection.}{0.5em}{}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}

\addto\captionsenglish{\renewcommand{\contentsname}{\uppercase{Table of contents}}}
\addto\captionsenglish{\renewcommand{\bibname}{\uppercase{Bibliography}}}
\addto\captionsenglish{\renewcommand{\listfigurename}{\uppercase{List of figures}}}
\addto\captionsenglish{\renewcommand{\listtablename}{\uppercase{List of tables}}}

% Unbold chapter names
\usepackage[titles]{tocloft}
% \renewcommand{\cftchapfont}{}
% \renewcommand{\cftchappagefont}{}

% Add dots after chapter, section and subsection numbers
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}

% Change space between chapters (0 pt seems to work well as simulation of single-spaced lines, as defined in editorial guidelines)
% \setlength\cftbeforechapskip{0pt}

% Add line of dots for chapters (and other elements as Bibliography)
% \renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
