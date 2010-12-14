#!/bin/bash
# if the script fails, you can run this to get the files back:
# 		rm *.pdf *.ps
#			svn up

# set -x
for pdf in $*; do
	pdftops $pdf
	ps=`basename $pdf .pdf`.ps
	ls $ps
	mv $pdf orig.$pdf
	ps2pdf -dPDFSETTINGS=/prepress $ps
	pdffonts $pdf | grep no
done
echo 'if all is good, you can rm *.ps orig.*.pdf'

### pdffonts is from macports package poppler
# for f in $(find . -name '*.pdf'); do
# 	echo $f
# 	pdffonts $f | tail -n -2 | grep no
# done