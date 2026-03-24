package com.example.myapplication
fun CompararNumeros (A : Int, B: Int) {
    if (A==B) {
        print ("Son Iguales")
    } else {
        if (A > B) {
            print ("A es mayor que B")
        } else {
            print ("B es mayor que A")
        }
    }
}
fun main() {
    print("Escribe el primer numero (A):")
    val As = readLine()!!
    val A= Integer.parseInt(As)
    print("Escribe el segundo numero (B):")
    val Bs = readLine()!!
    val B= Integer.parseInt(Bs)
    CompararNumeros(A,B)
}
