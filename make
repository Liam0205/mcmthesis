set -ex

# check
perl adjust_checksum.pl mcmthesis.dtx

# generate
xetex   -interaction=batchmode mcmthesis.dtx

# documentation
xelatex -interaction=batchmode mcmthesis.dtx
xelatex -interaction=batchmode mcmthesis.dtx

# demo
xelatex -interaction=batchmode mcmthesis-demo.tex
xelatex -interaction=batchmode mcmthesis-demo.tex

# clean
rm -f *.log *.out *.aux *.glo *.idx *.fdb_latexmk *.fls *.toc *.xdv *.zip

# GitHub
mv LICENSE.tex LICENSE
mv README.tex README.md

# CTAN Archive
mkdir -p mcmthesis
cp -r code mcmthesis
cp -r figures mcmthesis
cp LICENSE mcmthesis
cp README.md mcmthesis/README
cp mcmthesis-demo.pdf mcmthesis
cp mcmthesis.pdf mcmthesis
cp mcmthesis.dtx mcmthesis
zip -r mcmthesis-ctan.zip mcmthesis
rm -rf mcmthesis

# GitHub Archive
zip -r mcmthesis.zip code figures LICENSE README.md mcmthesis-demo.tex mcmthesis-demo.pdf mcmthesis.dtx mcmthesis.cls mcmthesis.pdf
