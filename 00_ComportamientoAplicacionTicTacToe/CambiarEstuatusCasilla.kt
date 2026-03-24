fun CambiarEstadoCasilla(b: ImageButton, fila: Int, columna: Int) {
    if (matrix[fila][columna]!!.deviceStatus.equals("SIN_MARCA")) {
        if (Turno == 1) {
            b.setImageResource(R.drawable.cruz)
            matrix[fila][columna]!!.deviceStatus = "CRUZ"
            ConteoCruces += 1
        } else {
            b.setImageResource(R.drawable.corazon)
            matrix[fila][columna]!!.deviceStatus = "CORAZON"
            ConteoCorazones += 1
        }
        if (Turno == 1) Turno = 2 else Turno = 1
        ActualizarEstatusTablero(fila, columna)
    }
}

