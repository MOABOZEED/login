import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String textHit;

  const CustomTextField({
    super.key,
    required this.textHit,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.end,
      decoration: InputDecoration(
          hintText: textHit,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
