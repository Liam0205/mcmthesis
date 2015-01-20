xelatex mcmthesis.ins
xelatex -interaction=batchmode -shell-escape mcmthesis.dtx
xelatex -interaction=batchmode -shell-escape mcmthesis.dtx
xelatex -interaction=batchmode mcmthesis-demo.tex
xelatex -interaction=batchmode mcmthesis-demo.tex
mv LICENSE.md LICENSE
mv README.md README
open mcmthesis.pdf
