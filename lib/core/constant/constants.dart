import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

const String UserApiBaseUrl = 'google.com';
buildAppbar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: GradientText(
      'Highlight',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 32.0,
      ),
      gradientType: GradientType.linear,
      colors: [HexColor("#EB98B6"), Color.fromARGB(255, 255, 221, 232)],
    ),
  );
}
