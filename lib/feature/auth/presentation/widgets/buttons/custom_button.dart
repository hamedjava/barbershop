import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final Function? onPressed;
  const CustomButton({super.key, required this.title, this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: HexColor("#EB98B6"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.3,
          child: Center(
            child: Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
          )),
      onPressed: () {},
    );
  }
}
