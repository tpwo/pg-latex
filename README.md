# PG LaTeX template

The intention of this repo is to provide a working LaTeX template for writing bachelor and master theses for students of Politechnika Gdańska (Gdańsk University of Technology).
The template was prepared to be compliant with editorial guidelines from the year 2018 which are available on the [university website](https://pg.edu.pl/documents/8597924/15531473/ZR%2022-2018) (document contains guidelines in Polish and English).
Some inspiration was taken also from [guidelines from the year 2014](https://eti.pg.edu.pl/documents/1115629/0/zarz%C4%85dzenie%20wytyczne%20pracy) which are more detailed than the latest version.

## Provided files

The configuration enforced by the editorial guidelines is included solely in the `pg.cls` file and it is fine to only use that file.
In `preamble_pg.sty` there are some additional settings and packages which might be helpful (i.e. they were helpful to the author) in writing a thesis but are totally optional.
The later text is written with the assumption that the user wants to use both files.
If one's decision is different, skip the line `\usepackage{pg-latex/preamble_pg}` in your main `.tex` file.

## Dual-language support

The template provided in this repo should be compatible with both English and Polish.
However, not all language-specific settings can coexist thus different branches were introduced: [polish](https://github.com/trivvz/pg-latex/tree/polish) and [english](https://github.com/trivvz/pg-latex/tree/english) (added for verbosity, same as `master`).

## Suggested setup process

### Git submodule

The suggested way is to import this template as a `git submodule`.
Use one of the following commands in your LaTeX git repo in order to clone and set up this template as a submodule.

Polish version:

```bash
git submodule add -b polish https://github.com/trivvz/pg-latex.git
```

English version:

```bash
git submodule add -b english https://github.com/trivvz/pg-latex.git
```

For correct setup remember to commit the `.gitmodules` and `pg-latex` which appeared in your staging area after executing the above command:

```bash
git commit -m "Add submodule https://github.com/trivvz/pg-latex.git"
```

For more information about the submodules refer to [the official git submodule documentation](https://git-scm.com/docs/git-submodule).

### Plain copy

If for any reason, you don't want to use git submodules you can create a `pg-latex` folder in your local workspace and copy `pg.cls` and `preamble_pg.sty` into it to achieve the same effect (remember about switching to the correct branch before). 

## Use in your LaTeX project

For the correct setup without LaTeX warnings you need to have a `pg-latex` folder in the same path as your main file (usually `main.tex`).
It is possible to set up different paths but the manual editing  of files is needed in this case as `\ProvidesClass` in `pg.cls` and `\ProvidesPackage` in `preamble_pg.sty` need to reflect a folder structure of your workspace.
By default it is:

```tex
\ProvidesClass{pg-latex/pg}
```
and

```tex
\ProvidesPackage{pg-latex/preamble_pg}
```

### Basic usage in your project

For the basic use of this template you just need to import the document class and the preamble:

```tex
\documentclass{pg-latex/pg}
\usepackage{pg-latex/preamble_pg}


\begin{document}

<...>

\end{document}
```

### Additional config

Of course, you might want to include additional configuration before your `\begin{document}`, e.g. paths for graphics and photos or some listing files with defined language highlighting:

```tex
\documentclass{pg-latex/pg}
\usepackage{pg-latex/preamble_pg}

% Configure paths
\graphicspath{{some-img-path/},{some-other-img-path/}}
\svgpath{{some-svg-path/}}

% Add some language syntax highlighting
\input{some_listing.sty}


\begin{document}

<...>

\end{document}
```

### Additional preamble

You might find it more convenient to put all these additional configurations in an external file which can be imported as an additional preamble:

```tex
\documentclass{pg-latex/pg}
\usepackage{pg-latex/preamble_pg}

\usepackage{path_to_my_preamble}


\begin{document}

<...>

\end{document}
```

## Compatibility

The provided template should be compatible with all current LaTeX distributions.
In particular, it was tested to be working with [TeX Live](https://tug.org/texlive/) and [LaTeX Workshop](https://github.com/James-Yu/LaTeX-Workshop) extension for VS Code.

## See also
- [pg-beamer](https://github.com/jachoo/pg-beamer), a template for creating LaTeX presentations
- [PG_LaTeX_Templates](https://github.com/splaw1k/PG_LaTeX_Templates), another PG template available on GitHub

## Contributing

All fixes, proposed updates, or comments are welcome.
