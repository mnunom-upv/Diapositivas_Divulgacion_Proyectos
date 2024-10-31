rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log *.gz *.vrb
rm .fuse*

file=2024_ForoNalTI

file=ProyectosMaestria_2009-2024
file=TallerProgramacionMovil_V3
file=SalonDeLaFamaAplicacionesMoviles
#file=ConferenciaProgramacionMovil_2024
file=MacroPresentacion
file=2023_PonenciaRealidadVirtual



pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
biber $file
pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log *.gz *.vrb
rm .fuse*

open $file.pdf
