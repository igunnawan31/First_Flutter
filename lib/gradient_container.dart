import 'package:app_first/dice_roller.dart';
import 'package:flutter/material.dart';

// Alignment? startAlignment; (Alternatif Syntax)
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

class Gradientcontainer extends StatelessWidget {
  const Gradientcontainer(this.color1, this.color2, {super.key});
  // Gradientcontainer.purple() : color1 = Colors.blue[900]
  // const Gradientcontainer({super.key, required this.colors})
    // key : Special argument yang merujuk kepada class StatelessWidget
    // penggunaan super itu digunakan untuk merujuk kepada class yang dijadikan parent
    // Initialization work
    // Add Some Comment

  const Gradientcontainer.blue({super.key}) 
    : color1 = Colors.blue, 
      color2 = Colors.blueGrey;
      
  final Color color1;
  final Color color2;
  // final List<Color> colors;

  @override
  Widget build(context) {
    // startAlignment = Alignment.center;
    return Container(
          // decoration: const BoxDecoration()
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:
              [
                color1,
                color2,
              ],
              begin: startAlignment, // Untuk Mengatur mulainya gradasi warna
              end: endAlignment, // Untuk Mengatur akhirnya gradasi warna
            ),
          ),
          child: const Center(
            child: DiceRoller(),
      ),
    );
  }
}
// Variables = "Data Containers"
// Notes :
// 1. Dalam menambahkan suatu variable yang mungkin untuk diubah, maka suatu class tidak bisa dijadikan suatu const
// 2. Kita bisa menambahkan value suatu variable dalam suatu class (jika variable tersebut bukan constanta/bisa diubah)

// Final :
// 1. Final merupakan suatu variable yang tidak akan bisa menerima suatu data baru.
// 2. Final digunakan untuk mencegah variable untuk mengset data yang baru

// Const :
// 1. Const merupakan jenis tipe data yang memungkinkan agar suatu variabel tidak bisa menerima data baru.