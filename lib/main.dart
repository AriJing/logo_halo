/// @Author: Ari Jing
/// @email: blackiron.sh@gmail.com
/// @created:  2023-04-26 10:50:57
/// @description:
import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mouse Cursor Gradient',
        home: MainScreen());
  }
}
