fun MostrarAlertDialog(C: String) {
    val builder = AlertDialog.Builder(this)
    builder.setTitle("Juego Finalizado")
    builder.setMessage(C)
    builder.setCancelable(false)
    builder.setPositiveButton("Reiniciar") { dialog, which ->
        Toast.makeText(applicationContext, android.R.string.yes, Toast.LENGTH_SHORT).show()
        ReiniciarControles()
    }
    builder.setNegativeButton("Salir") { dialog, which ->
        Toast.makeText(applicationContext, android.R.string.no, Toast.LENGTH_SHORT).show()
        finish()
    }
    builder.show()
}
