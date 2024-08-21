import 'package:app_first/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  /* Defining Function */
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.deepPurpleAccent,
        // backgroundColor: Color.fromARGB(255, 14, 91, 168),
        body: Gradientcontainer(
                Color.fromARGB(255, 26, 77, 172),
                Color.fromARGB(0, 45, 7, 98)),
      ),
    ),
  ); /* Mengharuskan untuk terdapat parameters */
}



// Function : "Code on demand" 