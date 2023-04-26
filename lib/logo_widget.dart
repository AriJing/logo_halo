/// @Author: Ari Jing
/// @email: blackiron.sh@gmail.com
/// @created:  2023-04-26 10:50:08
/// @description:
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget(
      {super.key,
      required this.radius,
      required this.logoText,
      this.textColor = Colors.white,
      this.bgColro = Colors.blueAccent});
  final double radius;
  final String logoText;
  final Color textColor;
  final Color bgColro;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: bgColro.withOpacity(0.80),
              spreadRadius: 10,
              blurRadius: 20,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Center(
          child: Text(
            logoText,
            style: TextStyle(
              color: textColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
