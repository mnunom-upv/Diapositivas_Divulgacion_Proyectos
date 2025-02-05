rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm 

myArray=('2002_ArquitecturaPiramide' '2003_PiramideMultiresolucion' '2005_ArquitecturaInterpolacion' '2009_Spiking' '2011_Peptidos'
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
'2022_Spelling'
'2022_TallerGraficacion')

#myArray=('2002_ArquitecturaPiramide' '2003_PiramideMultiresolucion' '2005_ArquitecturaInterpolacion' '2009_Spiking' '2011_Peptidos')

#myArray=("2002_ArquitecturaPiramide" "2003_PiramideMultiresolucion" "2005_ArquitecturaInterpolacion" "2009_Spiking" "2011_Peptidos")

#
#myArray=("2022_Scanner3D")
#myArray=("2022_MapaUPV_RealidadAumentada")


myArray=("2024_DetectorMotos")


cat ZZ_Generica.tex > TemporalFinal2.tex

for str in ${myArray[@]}; do
	R=`ls -t ${str}/*.tex | head -1`

	echo $str
	# Para el TEX individual
	echo "\input{$R}"> TemporalFinal.tex

	# Para el archivo contentrados
	str2=`echo "$str" | sed -r 's/_/-/g'`

	echo "\section{$str2}">> TemporalFinal2.tex
	echo "\input{$R}">> TemporalFinal2.tex

	echo "\end{document}">> TemporalFinal.tex
	#	  echo "input{$R}">> TemporalFinal.tex
	cat Generica.tex TemporalFinal.tex > $str.tex
	#echo "input{$R}"



	pdflatex $str.tex
	biber $str
	pdflatex $str.tex
	pdflatex $str.tex

	rm $str.tex
	rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log

#	mv $str.pdf $str/$str.pdf

	open $str.pdf


	


done
echo "\end{document}">> TemporalFinal2.tex
pdflatex TemporalFinal2.tex
biber TemporalFinal2
pdflatex TemporalFinal2.tex
pdflatex TemporalFinal2.tex


rm *.aux *.bbl *.blg *.out *.toc *.nav *.bcf *.xml *.snm *.log



