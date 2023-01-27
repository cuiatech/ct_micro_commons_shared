import 'package:flutter/material.dart';

class CuiaIcons extends StatelessWidget {
  const CuiaIcons({super.key, required this.path, this.size = 18});

  final double size;
  final String path;

  static Widget lock() => const CuiaIcons(
        path: "/assets/icons/Lock.png",
      );

  static Widget profile() => const CuiaIcons(
        path: "/assets/icons/Profile.png",
      );

  static Widget shape() => const CuiaIcons(
        path: "/assets/icons/Shape.png",
      );

  static Widget support() => const CuiaIcons(
        path: "/assets/icons/Support.png",
      );

  @override
  Widget build(Object context) {
    return Image.asset(
      path,
      width: size,
      package: 'flut_micro_commons_shared',
    );
  }
}
