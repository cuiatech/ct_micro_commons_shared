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

  static Widget support({bool white = false, double? size}) => CuiaIcons(
        path: white
            ? "/assets/icons/Suport_white.png"
            : "/assets/icons/Support.png",
        size: size ?? 18,
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
