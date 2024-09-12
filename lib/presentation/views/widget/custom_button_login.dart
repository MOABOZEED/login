import 'package:flutter/material.dart';

class CustomSpeedLogin extends StatelessWidget {
  final String image;
  const CustomSpeedLogin({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,

      decoration: const BoxDecoration(
        color: Color(0xffECECEC),
        shape: BoxShape.circle,
      ),
      child: Image.asset(image),
    );
  }
}