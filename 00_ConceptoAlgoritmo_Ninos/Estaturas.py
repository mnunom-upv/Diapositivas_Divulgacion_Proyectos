ArregloEstaturas=[0,0,0,0,0,0,0,0]
numero_ninos = 8; 
indice=0
while (indice<numero_ninos):
    Estatura=input("Dame la estatura del elemento "+str(indice)+" : ")
    ArregloEstaturas[indice]=int(Estatura)
    indice=indice+1

indice=0
while (indice<numero_ninos):
    if (indice==0):
        estatura_mas_alto=ArregloEstaturas[indice]
        indice_mas_alto=indice
    else:
        if (ArregloEstaturas[indice]>estatura_mas_alto):
            estatura_mas_alto=ArregloEstaturas[indice]
            indice_mas_alto=indice
    indice=indice+1
print ("Estura del mas alto: ",estatura_mas_alto)
print ("Posicion del mas alto: ",indice_mas_alto)                
        
