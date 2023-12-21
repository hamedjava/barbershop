import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.validator,
      this.controller,
      this.width,
      this.height,
      this.hintText,
      this.errorText,
      this.icon});
  final String? Function(String? value) validator;
  final TextEditingController? controller;
  final String? hintText;
  final Icon? icon;
  final double? width;
  final double? height;
  final String? errorText;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        validator: widget.validator,
        decoration: InputDecoration(
          hintTextDirection: TextDirection.rtl,
          hintText: 'شماره همراه خود را وارد کنید',
          errorText: widget.errorText,
          suffixIcon: widget.icon,
          border: const UnderlineInputBorder(),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 248, 223, 6),
            ),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
