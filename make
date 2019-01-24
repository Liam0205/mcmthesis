set -x

perl adjust_checksum.pl mcmthesis.dtx
xetex   -interaction=batchmode mcmthesis.dtx
xelatex -interaction=batchmode mcmthesis.dtx
xelatex -interaction=batchmode mcmthesis.dtx
xelatex -interaction=batchmode mcmthesis-demo.tex
xelatex -interaction=batchmode mcmthesis-demo.tex
mv LICENSE.tex LICENSE
mv README.tex README
rm *.log *.out *.aux *.glo *.idx
zip mcmthesis.zip code figures LICENSE README mcmthesis-demo.* mcmthesis.*
mv README README.md
