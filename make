set -x

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

# CTAN pack
rm *.log *.out *.aux *.glo *.idx *.zip
mv LICENSE.tex LICENSE
mv README.tex README

mkdir -p mcmthesis
cp -r code mcmthesis
cp -r figures mcmthesis
cp LICENSE mcmthesis
cp README mcmthesis
cp mcmthesis-demo.pdf mcmthesis
cp mcmthesis.pdf mcmthesis
cp mcmthesis.dtx mcmthesis

zip -r mcmthesis.zip mcmthesis
rm -rf mcmthesis

# GitHub
mv README README.md
