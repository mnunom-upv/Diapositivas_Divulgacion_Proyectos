fun ActualizarEstatusTablero(fila: Int, columna: Int) {
    TextViewPizarra.text = "Ultimo Turno: " +
            matrix[fila][columna]!!.deviceStatus +
            "\n Conteo Cruces: " + ConteoCruces +
            "\n Contro Corazones: " + ConteoCorazones
}
