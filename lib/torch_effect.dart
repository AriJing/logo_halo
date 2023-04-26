/// @Author: Ari Jing
/// @email: blackiron.sh@gmail.com
/// @created:  2023-04-26 10:49:49
/// @description:
import 'dart:math' as math;
import 'package:flutter/material.dart';

class TorchEffect extends StatefulWidget {
  const TorchEffect(
      {super.key, required this.haloRadius, required this.lightColor});

  final double haloRadius;
  final Color lightColor;

  @override
  State<TorchEffect> createState() => _TorchEffectState();
}

class _TorchEffectState extends State<TorchEffect> {
  late Offset _position = Offset.zero;

  @override
  void initState() {
    super.initState();
  }

  void _onMouseUpdate(PointerEvent event) {
    setState(() {
      _position = event.position;
    });
  }

  @override
  Widget build(BuildContext context) {
    String randomChars = generateRandomString(4000);
    return MouseRegion(
        onHover: _onMouseUpdate,
        child: Text(
          randomChars, //显示内容为随机字符
          maxLines: null,
          style: TextStyle(
            fontSize: 14,
            foreground: Paint()
              ..shader = RadialGradient(
                colors: [
                  widget.lightColor,
                  Colors.transparent,
                ],
                stops: const [0.4, 1.0],
              ).createShader(
                Rect.fromCircle(
                  center: _position,
                  radius: widget.haloRadius,
                ),
              ),
          ),
        ));
  }

  String generateRandomString(int length) {
    const chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final rand = math.Random();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(rand.nextInt(chars.length)),
      ),
    );
  }
}
