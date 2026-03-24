lateinit var B1_1 : ImageButton
lateinit var B1_2 : ImageButton
lateinit var B1_3 : ImageButton
lateinit var B2_1 : ImageButton
lateinit var B2_2 : ImageButton
lateinit var B2_3 : ImageButton
lateinit var B3_1 : ImageButton
lateinit var B3_2 : ImageButton
lateinit var B3_3 : ImageButton
lateinit var TextViewPizarra : TextView
var Turno : Int = 1   // 1-Turno Cruz, 2-Turno Corazon
var numRows : Int = 3
var numCols : Int = 3
lateinit var matrix: Array<Array<CeldaGato?>>

var ConteoCruces : Int = 0  // # de Celdas Marcadas Cruz 
var ConteoCorazones : Int = 0  // de Celdas Marcadas Corazon

