import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key});

  final String text;
  // Untuk menambahkan text, kita harus membuat constructor untuk menjadi sebuah method yang flexible
  // Final digunakan hanya untuk memastikan bahwa yang kita masukkan sudah di set kedalam data container
  @override
  Widget build(context) {
    // Text merupakan method yang flexible
    return Text(
      text,
      // Kita tetap memperlukan textstyle yang tetap dan tidak menerima pembaharuan.
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}