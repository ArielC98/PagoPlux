import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int? maxLength;

  const ReusableTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      margin: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
          color: Color(0xFFEDF0F7),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      width: 380,
      height: 50,
      child: TextField(
        maxLength: maxLength,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          counterText: '',
        ),
      ),
    );
  }
}
