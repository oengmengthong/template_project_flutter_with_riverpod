import 'package:flutter/material.dart';

class SharedTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const SharedTextField({
    Key? key,
    required this.labelText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
