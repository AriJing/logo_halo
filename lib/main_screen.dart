/// @Author: Ari Jing
/// @email: blackiron.sh@gmail.com
/// @created:  2023-04-26 10:50:28
/// @description:
import 'package:flutter/material.dart';

import 'logo_widget.dart';
import 'torch_effect.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          const Positioned.fill(
              child: TorchEffect(
            haloRadius: 300,
            lightColor: Colors.purpleAccent,
          )),
          const IgnorePointer(
            child: Center(
              child: LogoWidget(
                radius: 250,
                logoText: 'AriJing',
                textColor: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
