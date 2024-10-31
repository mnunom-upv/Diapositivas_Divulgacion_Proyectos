fun ReiniciarControles() {
        for (i in 0..numRows - 1) {
            for (j in 0..numCols - 1) {
                matrix[i][j]!!.deviceStatus = "SIN_MARCA"
            }
        }
        B1_1.setImageResource(R.drawable.usuario)
        B1_2.setImageResource(R.drawable.usuario)
        B1_3.setImageResource(R.drawable.usuario)
        B2_1.setImageResource(R.drawable.usuario)
        B2_2.setImageResource(R.drawable.usuario)
        B2_3.setImageResource(R.drawable.usuario)
        B3_1.setImageResource(R.drawable.usuario)
        B3_2.setImageResource(R.drawable.usuario)
        B3_3.setImageResource(R.drawable.usuario)
        Turno = 1  // 1 - Turno Cruz, 2 - Turno Corazon
        ConteoCruces = 0  // Numero de Celdas MArcadas con Cruz
        ConteoCorazones = 0  // Numero de Celdas Marcadas con Gato

        TextViewPizarra.text = "Inicio del Juego: " +
                "\n Conteo Cruces: " + ConteoCruces +
                "\n Contro Corazones: " + ConteoCorazones
    }
