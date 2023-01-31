import 'package:flutter/material.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

class CuiaLogo extends StatelessWidget {
  const CuiaLogo({
    Key? key,
  }) : super(key: key);

  static Widget vertical() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/cuiatech_logo.png',
          package: 'flut_micro_commons_shared',
          width: 104,
        ),
        const SizedBox(height: 20),
        Text(
          "Cuiatech.com",
          textAlign: TextAlign.center,
          style: GoogleFonts.blackHanSans(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ],
    );
  }

  static horizontal({String? text, double? width, double? fontSize}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/cuiatech_logo.png',
          package: 'flut_micro_commons_shared',
          width: width ?? 104,
        ),
        const SizedBox(width: 10),
        Text(
          text ?? "Cuiatech.com",
          textAlign: TextAlign.center,
          style: GoogleFonts.blackHanSans(
            color: Colors.white,
            fontSize: fontSize ?? 25,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return vertical();
  }
}
