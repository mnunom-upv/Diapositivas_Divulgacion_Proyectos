fun ChecarGanadorPorDiagonales(): Triple<Boolean, Int, String> {
    var Pivote: String
    Pivote = matrix[0][0]!!.deviceStatus
    for (i in 1..numRows - 1) {
        if (matrix[i][i]!!.deviceStatus.equals(Pivote))
            Pivote = matrix[i][i]!!.deviceStatus
        else
            Pivote = "NO"
    }
    if (Pivote.equals("CRUZ") || Pivote.equals("CORAZON")) {
        return Triple(true, 0, Pivote)
    }
    var Col = 2
    Pivote = matrix[0][Col]!!.deviceStatus
    for (i in 1..numRows - 1) {
        Col -= 1
        if (matrix[i][Col]!!.deviceStatus.equals(Pivote))
            Pivote = matrix[i][Col]!!.deviceStatus
        else
            Pivote = "NO"
    }
    if (Pivote.equals("CRUZ") || Pivote.equals("CORAZON")) {
        return Triple(true, 1, Pivote)
    }
    return Triple(false, -1, "NO");
}
