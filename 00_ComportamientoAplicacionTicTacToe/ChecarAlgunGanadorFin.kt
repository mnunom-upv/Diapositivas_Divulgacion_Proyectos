fun ChecarAlgunGanadorFin(fila: Int, columna: Int): Boolean {
    if ((ConteoCorazones > 2) || (ConteoCruces > 2)) {         // Checa si hay fila ganadora
        var (Ganador, Indice, Jugador) = ChecarGanadorPorFilas()
        if (Ganador) { // Hay una fila ganadora
            TextViewPizarra.text = "Gano: " + Jugador + " Fila: " + Indice
            MostrarAlertDialog("Ganador: " + Jugador)
            return (true)
        } else { // Checa si hay columna ganadora
            var (Ganador2, Indice2, Jugador2) = ChecarGanadorPorColumnas()
            if (Ganador2) { // Hay una columna ganadora
                MostrarAlertDialog("Ganador: " + Jugador2)
                TextViewPizarra.text = "Gano: " + Jugador2 + " Columna: " + Indice2
                return true
            } else {
                var (Ganador3, Indice3, Jugador3) = ChecarGanadorPorDiagonales()
                if (Ganador3) { // Ganador por alguna columna
                    MostrarAlertDialog("Ganador: " + Jugador3)
                    TextViewPizarra.text = "Gano: " + Jugador3 + " Diagonal: " + Indice3
                    return true
                } else
                    return (false)
            }
        }
    } else {
        ActualizarEstatusTablero(fila, columna)
    }
    return false 
}
