import 'package:flutter/material.dart';
import 'package:loginpage/presentation/views/widget/custom_button_login.dart';
import 'package:loginpage/presentation/views/widget/custom_login_body.dart';
import 'package:loginpage/presentation/views/widget/custom_text_faild.dart';

import '../../core/constant/assets_const.dart';
import '../../core/constant/style.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Expanded(
        child: Column(
          children: [
            Center(
              child: Image.asset(AppAssets.login),
            ),
            const CustomTextField(textHit: "Email"),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(textHit: "Password"),
            const SizedBox(height: 5,),
            GestureDetector(

              child: const Text(style: TextStyle(color: Colors.blue),
                  "Forgot your password? "
              ),
            ),
            const SizedBox(height: 20,),


            Column(
              children: [
                const CustomButtonLogin(color: AppColor.blueColor,text: "Login"),
                const SizedBox(height: 20,),
                GestureDetector(
                  child: const Text(textAlign: TextAlign.center,"Create new account",),
                ),
                const SizedBox(height: 20,),


              ],
            ),

            const SizedBox(height: 10,),


          ],
        ),
      ),

    );
  }
}
