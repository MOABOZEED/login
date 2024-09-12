import 'package:flutter/material.dart';

class CustomButtonLogin extends StatelessWidget {
  final Color color;
  final String? text;
  const CustomButtonLogin({
    super.key, required this.color,this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child:  Center(
          child: Text(
            text ?? ""
            ,style:const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),
          ),
        ),


      ),
    );
  }
}