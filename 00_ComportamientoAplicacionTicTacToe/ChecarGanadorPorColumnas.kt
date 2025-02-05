fun ChecarGanadorPorColumnas(): Triple<Boolean, Int, String> {
    // Recorrido por columnas
    var Pivote: String = ""
    for (i in 0..numCols - 1) {
        Pivote = matrix[0][i]!!.deviceStatus
        for (j in 1..numRows - 1) {
            if (matrix[j][i]!!.deviceStatus.equals(Pivote))
                Pivote = matrix[j][i]!!.deviceStatus
            else
                Pivote = "No"
        }
        if (Pivote.equals("CRUZ") || Pivote.equals("CORAZON")) {
            return Triple(true, i, Pivote)
        }
    }
    return Triple(false, -1, "NO");
}
