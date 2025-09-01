
# Pasos Previos
#git init
#git add .
#git commit -m "Initial Commit"
#git config --global credential.helper store
#git config --global user.email "mnunom@upv.edu.mx" 
#git branch -M main
#git remote add origin https://github.com/mnunom-upv/Diapositivas_Divulgacion_Proyectos.git

#
# git pull origin main --allow-unrelated-histories


rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log *.gz *.vrb
rm .fuse*

file=2024_ForoNalTI

#file=ProyectosMaestria_2009-2024
#file=2025_TallerRealidadVirtual_y_Aumentada
#file=TallerProgramacionMovil_V3
#file=SalonDeLaFamaAplicacionesMoviles
#file=ConferenciaProgramacionMovil_2024
#file=MacroPresentacion
#file=2023_PonenciaRealidadVirtual
file=IntroduccionDesarrolloAPlicacionesMoviles


pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
biber $file
pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log *.gz *.vrb
rm .fuse*

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf $file.pdf
cp output.pdf $file.pdf
rm output.pdf

current=$(date '+%s')
git add .
# Establece una version
git commit -m "Version${current}"
# Hace el Push
git push --force -u origin main



open $file.pdf
