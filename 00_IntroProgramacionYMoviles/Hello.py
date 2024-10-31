def CompararNumeros(A,B):
	if (A==B):
		print ("Son Iguales ")
	else:
		if (A>B):
			print ("A es mayor que B ")
		else:
			print ("B es mayor que A ")

As = input ("Escribe el primer numero (A): ")
A = int(As)
Bs = input ("Escribe el segundo numero (B): ")
B = int(Bs)
CompararNumeros(A,B)
