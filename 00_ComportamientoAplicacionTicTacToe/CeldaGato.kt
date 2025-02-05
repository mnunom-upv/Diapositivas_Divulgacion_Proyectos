class CeldaGato (val row: Int, val col: Int) {
    var deviceStatus = "SIN_MARCA"
    constructor(row: Int, col: Int, statusCode: Int) 
            : this(row, col) {
        deviceStatus = when (statusCode) {
            0 -> "TACHA"
            1 -> "CORAZON"
            else -> "SIN_MARCA"
        }
    }
}

