
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

#file=2026_RecorridosRealidadVirtual_TAMUX
#file="2026_RecorridosRealidadVirtual_Padilla"
file="2026_Depuracion"


current_date=$(date '+%Y/%m/%d %H:%M:%S')

#exit


pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
biber $file
pdflatex -interaction nonstopmode -shell-escape -synctex=1 $file.tex
rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log *.gz *.vrb
rm .fuse*

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf $file.pdf
cp output.pdf $file.pdf
rm output.pdf

#open $file.pdf
# Store formatted date
#current_date=$(date +%Y-%m-%d)

# Use the variable
#echo "# Diapositivas Divulacion Proyectos " > README.md
#echo -e "Last updated on $current_date \n" >> README.md
#echo -e "Last presentation updated: $file \n" >> README.md

#echo "Last updated on $current_date" 
#echo "Last presentation updated: $file"

python3 AnalizarDemos.py > README.md




#git remote add origin https://github.com/mnunom-upv/Diapositivas_Divulgacion_Proyectos.git

current=$(date '+%s')
git init
git add .
# Establece una version
git commit -m "Version${current}"
# Hace el Push
git push --force -u origin main

open $file.pdf
