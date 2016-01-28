perl adjust_checksum.pl mcmthesis.dtx
xetex mcmthesis.dtx
xelatex mcmthesis.dtx
xelatex mcmthesis.dtx
#xelatex -shell-escape mcmthesis.dtx
#xelatex -shell-escape mcmthesis.dtx
xelatex mcmthesis-demo.tex
xelatex mcmthesis-demo.tex
mv LICENSE.tex LICENSE
mv README.tex README
rm *.log *.out *.aux *.glo *.idx
rm -rf _minted-mcmthesis
open .
