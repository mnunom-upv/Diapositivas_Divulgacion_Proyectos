fun CrearMatrizEstatus() {
    matrix = Array(numRows) { row ->
        Array(numCols) { col ->
            CeldaGato(row, col)
        }
    }
}
