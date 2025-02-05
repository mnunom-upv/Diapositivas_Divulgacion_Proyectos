fun ObtieneFilaColumna (it : View):  Pair<Int, Int> {
    var fila = 0;
    var columna = 0
    when (it.id) {
        R.id.boton1_1 -> { fila = 1;  columna = 1 }
        R.id.boton1_2 -> { fila = 1;  columna = 2 }
        R.id.boton1_3 -> { fila = 1;  columna = 3 }
        R.id.boton2_1 -> { fila = 2;  columna = 1 }
        R.id.boton2_2 -> { fila = 2;  columna = 2 }
        R.id.boton2_3 -> { fila = 2;  columna = 3 }
        R.id.boton3_1 -> { fila = 3;  columna = 1 }
        R.id.boton3_2 -> { fila = 3;  columna = 2 }
        R.id.boton3_3 -> { fila = 3;  columna = 3 }
        else -> {          fila = -1; columna = -1 }
    }
    return Pair(fila-1, columna-1)
}

