rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm 

myArray=(
'2002_ArquitecturaPiramide' 
'2003_PiramideMultiresolucion' 
'2005_ArquitecturaInterpolacion' 
'2009_Spiking' '2011_Peptidos'
'2012_Glucometro'
'2012_HuellasDactilares'
'2013_SerbotI'
'2014_BookSCanner'
'2014_LocalAdaptiveImageThresholding'
'2014_VehicleCounter'
'2015_ActivityRecognition'
'2017_Ajedrez3D'
'2017_CruzdeMalta'
'2017_Tetris3D'
'2018_AugmentedReality'
'2018_IPS'
'2018_RemoteMonitoring'
'2019_BrazoRobot3D'
'2019_Naranjas'
'2019_RealidadAumentada'
'2020_AEDMA'
'2020_BasculaInteligente'
'2020_Karyograms'
'2020_MascotaUPV3D'
'2020_RemoteLearning'
'2020_SeguridadAutomotriz'
'2020_TutorialBlender'
'2021_IoT_JoseRamon'
'2021_JugadasAjedrezComputerVision'
'2021_ListaOnLine'
'2021_RecorridoUPV'
'2022_AplicacionLSM'
'2022_AppPaseLista'
'2022_BottleClassifier'
'2022_ConteoMicroAlgas'
'2022_ConteoOstioncitos'
'2022_FatChild3D'
'2022_HidroponicosDavid'
'2022_MapaVickyRanch'
'2022_MaquinaChilePiquin'
'2022_Plagio'
'2022_RefrigeradoresFrios'
'2022_Scanner3D'
'2022_Spelling')

# Depurar
#for str in ${myArray[@]}; do
#    echo $str
#    cd $str
#    ls -l *.pdf
#    rm *.pdf
#    cd ..
#done
#exit

#myArray=('2002_ArquitecturaPiramide' '2003_PiramideMultiresolucion' '2005_ArquitecturaInterpolacion' '2009_Spiking' '2011_Peptidos')

#myArray=("2002_ArquitecturaPiramide" "2003_PiramideMultiresolucion" "2005_ArquitecturaInterpolacion" "2009_Spiking" "2011_Peptidos")
#myArray=("2002_ArquitecturaPiramide" "2003_PiramideMultiresolucion" "2005_ArquitecturaInterpolacion" "2009_Spiking" "2011_Peptidos")

#
#myArray=("2022_Scanner3D")
#myArray=("2022_MapaUPV_RealidadAumentada")

#myArray=("2002_ArquitecturaPiramide")

myArray=('2002_ArquitecturaPiramide' '2003_PiramideMultiresolucion')
#myArray=('2024_ConteoNaranjasArbol')
#myArray=('2024_DetectorMotos' )
#myArray=('2024_PaseDeListaCodigoQR')
#myArray=('2024_DeteccionAlimentosAlbercas')
#myArray=('2024_ConteoMonedasEscritorio')
#myArray=('2024_IdentificadorGeneroEspectrograma')
#myArray=('2014_Llantas')
#myArray=('2022_AplicacionLSM')
#myArray=('2023_ManoRobotica')
#myArray=('2023_ChilesHabaneros')
#myArray=('2024_GerminadorAutomatico')
#myArray=('2023_ConteoNaranjasBandaTransportadora')
#myArray=('2021_ListaOnLine')
#myArray=('2023_AppComidaTamaulipeca')
#myArray=('2023_AppSegmentaCromosomas')
#myArray=('2021_JugadasAjedrezComputerVision')
#myArray=('2024_ProyectoCalificadorExamenes')
#myArray=('2020_Karyograms')

#myArray=('00_AndroidStudio')
#myArray=('00_CambiosInterfaz')
#myArray=('00_ComportamientoAplicacionTicTacToe')

cat ZZ_Generica.tex > TemporalFinal2.tex

for str in ${myArray[@]}; do
    echo $str
    R=`ls -t ${str}/*.tex | head -1`
    echo $R
	cat ZZ_Generica.tex > TemporalFinal.tex
	echo "\input{$R}">> TemporalFinal.tex
	echo "\end{document}">> TemporalFinal.tex

	echo "\section{$str}">> TemporalFinal2.tex
	echo "\input{$R}">> TemporalFinal2.tex

	pdflatex -interaction nonstopmode -shell-escape -synctex=1 TemporalFinal.tex
	biber TemporalFinal
	pdflatex -interaction nonstopmode -shell-escape -synctex=1 TemporalFinal.tex
	pdflatex -interaction nonstopmode -shell-escape -synctex=1 TemporalFinal.tex

    cp TemporalFinal.pdf $str.pdf
    mv $str.pdf $str

    rm TemporalFinal.*
	rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log *.gz
    rm .fuse*


    open $str/$str.pdf &

done

echo "\end{document}">> TemporalFinal2.tex
pdflatex -interaction nonstopmode -shell-escape -synctex=1 TemporalFinal2.tex
biber TemporalFinal2
pdflatex -interaction nonstopmode -shell-escape -synctex=1 TemporalFinal2.tex
pdflatex -interaction nonstopmode -shell-escape -synctex=1 TemporalFinal2.tex

rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log *.gz 
rm .fuse*


open TemporalFinal2.pdf




