\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pg-latex/pg}

\newcommand{\headlinecolor}{\normalcolor}
\LoadClass[10pt,a4paper,twoside]{report}

\RequirePackage[inner=3.5cm,outer=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{indentfirst}

\setlength{\parindent}{1.25cm}
\onehalfspacing % Interline 1.5

\RequirePackage[utf8]{inputenc}
\RequirePackage{polski}
\RequirePackage[polish, english]{babel}

\RequirePackage{pdfpages}
\RequirePackage{subcaption}
\RequirePackage{newtxtext, newtxmath} % Better headers

\RequirePackage[titletoc,title]{appendix}
\RequirePackage{titlesec}
\RequirePackage[T1]{fontenc}
\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}
\RequirePackage{csquotes}
\RequirePackage{graphicx}
\RequirePackage{microtype}

\RequirePackage{epstopdf} % For attaching images in .eps format
\RequirePackage{hyperref} % Intelnal hyperlinks
\RequirePackage{xcolor,listings} % Listings
\RequirePackage[font=small, labelsep=period]{caption} % 9pt labels font
\captionsetup[table]{justification=RaggedRight, singlelinecheck=false, format=hang, name=Table, position=above, labelfont=bf} % Setup table labels
\captionsetup[figure]{justification=centering, name=Fig., labelfont=bf}
\RequirePackage{enumitem} % Include missing symbols
\RequirePackage{pifont}  % Ticks and crosses

\RequirePackage{multirow} % Multicolumn and multirow cells in tables

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

\usepackage[titles]{tocloft} % Unbold chapter names

% Add dots after chapter, section and subsection numbers
\renewcommand{\cftchapaftersnum}{.}
\renewcommand{\cftsecaftersnum}{.}
\renewcommand{\cftsubsecaftersnum}{.}
