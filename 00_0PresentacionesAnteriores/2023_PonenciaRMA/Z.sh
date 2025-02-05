
Archivo=PresentacionRedMonitoreoAmbiental
#Archivo=PresentacionDivugacion16-9
rm *.toc *.snm *.out *.nav *.log *.aux
pdflatex $Archivo.tex
biber $Archivo
pdflatex $Archivo.tex
pdflatex $Archivo.tex
rm *.toc *.snm *.out *.nav *.log *.aux
evince $Archivo.pdf
#dspdfviewer $Archivo.pdf
