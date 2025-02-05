fun ChecarGanadorPorFilas(): Triple<Boolean, Int, String> {
    // Recorrido por filas
    var Pivote: String = ""
    for (i in 0..numRows - 1) {
        Pivote = matrix[i][0]!!.deviceStatus
        for (j in 1..numCols - 1) {
            if (matrix[i][j]!!.deviceStatus.equals(Pivote))
                Pivote = matrix[i][j]!!.deviceStatus
            else
                Pivote = "NO"
        }
        if (Pivote.equals("CRUZ") || Pivote.equals("CORAZON")) {
            return Triple(true, i, Pivote)
        }
    }
    return Triple(false, -1, "No");
}
