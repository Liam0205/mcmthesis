perl adjust_checksum.pl mcmthesis.dtx
xetex mcmthesis.dtx
xelatex -interaction=batchmode -shell-escape mcmthesis.dtx
xelatex -interaction=batchmode -shell-escape mcmthesis.dtx
xelatex -interaction=batchmode mcmthesis-demo.tex
xelatex -interaction=batchmode mcmthesis-demo.tex
mv LICENSE.tex LICENSE
mv README.tex README
rm *.log *.out *.aux *.glo *.idx
open .
