    val btnListener = View.OnClickListener {
        val (fila, columna) = ObtieneFilaColumna (it)
        Toast.makeText(applicationContext, 
            "PresionasteBoton ["+fila+","+columna+"]"+
                matrix[fila][columna]!!.deviceStatus, 
            Toast.LENGTH_SHORT).show()
        TextViewPizarra.text = "Alguna informacion util"
    }
