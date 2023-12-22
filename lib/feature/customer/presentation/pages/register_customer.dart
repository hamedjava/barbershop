import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class RegisterCustomer extends StatefulWidget {
  const RegisterCustomer({super.key});

  @override
  State<RegisterCustomer> createState() => _RegisterCustomerState();
}

class _RegisterCustomerState extends State<RegisterCustomer> {
  final TextEditingController controller = TextEditingController();
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      backgroundColor: HexColor('#FEFBFF'),
      body: const Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }

  _buildAppbar() {
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
}
