import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField(
      {super.key,
      required this.validator,
      this.controller,
      this.width,
      this.height,
      this.hintText,
      this.errorText,
      this.suffixIcon,
      this.prefixIcon,
      this.checked});
  final String? Function(String? value) validator;
  final TextEditingController? controller;
  final String? hintText;
  final Icon? suffixIcon, prefixIcon;
  final double? width;
  final double? height;
  final String? errorText;
  final Widget? checked;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 36),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(right: 12, left: 16),
            child: Icon(
              Icons.phone,
              size: 20,
              color: Colors.grey,
            ),
          ),
          suffix: widget.checked,
          hintTextDirection: TextDirection.rtl,
          alignLabelWithHint: true,
          hintStyle: const TextStyle(
            fontFamily: 'iranSans',
            fontSize: 12,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            borderSide: BorderSide(
                color: Colors.pinkAccent, style: BorderStyle.solid, width: 1),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.pinkAccent, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          errorStyle: const TextStyle(
            color: Colors.red,
          ),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
