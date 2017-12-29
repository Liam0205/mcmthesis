# The `mcmthesis` Class
This class is designed for the *MCM/ICM*. <br>
This work is released under the [*LaTeX Project Public License*](http://www.latex-project.org/lppl.txt), v1.3c or later.

## Installation
This work consists of the files 
* mcmthesis.dtx
* figures/*
* code/*

and the derived files:
* mcmthesis.cls
* mcmthesis-demo.tex
* README.md,
* LICENSE,
* mcmthesis.pdf
* mcmthesis-demo.pdf.

To install this class, you should
1. compile `mcmthesis.dtx` with `xetex mcmthesis.dtx`;
2. compile `mcmthesis.dtx` with `xelatex mcmthesis.dtx` twice;
3. compile `mcmthesis-demo.tex` with `xelatex mcmthesis-demo.tex` twice;
4. rename `README.tex` and `LICENSE.tex` respectively to `README` and `LICENSE`;
5. move `mcmthesis.cls` to `TEXMF/tex/latex/mcmthesis/`;
7. move `mcmthesis.dtx` to `TEXMF/source/latex/mcmthesis/`;
8. move other files to `TEXMF/doc/latex/mcmthesis/`;
9. run `texhash`.

## Author
* [*Zhaoli Wang*][zhaoli] <br>
Email: 343083553@qq.com
* [*Liam Huang*][liam-ctan] <br>
Email: liamhuang0205+mcmthesis@gmail.com

## Project Page
If you are interested in the process of development you may observe <br>
<https://github.com/Liam0205/mcmthesis>

[zhaoli]: http://www.latexstudio.net/
[liam-ctan]: http://www.ctan.org/author/huang-l
