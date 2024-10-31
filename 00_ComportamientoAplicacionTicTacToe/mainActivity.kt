package com.example.myapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
// imports externos que se van air agregado (*1)

class MainActivity : AppCompatActivity() {

    // En esta seccion se declaran las variables de clase (*2)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Se deben llamar los metodos que inicializar las variables
        // o la interfaz de usuario (*3)

    }

    // En esta seccion se declaran las funciones de la clase (*4)

}

// Declaracion de otras clases (*5)
