import 'package:flutter/material.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

class CuiaLogo extends StatelessWidget {
  const CuiaLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
