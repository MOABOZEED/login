import 'package:flutter/material.dart';

import '../../../core/constant/assets_const.dart';
import '../../../core/constant/style.dart';
import '../login_screen.dart';
import 'custom_button_login.dart';
import 'custom_login_body.dart';
import 'custom_text_faild.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                GestureDetector(
                  child: const Text("Or continue with",style: TextStyle( fontWeight: FontWeight.bold)),
                ),

              ],
            ),

            const SizedBox(height: 10,),
            const  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSpeedLogin(image: AppAssets.apple),
                CustomSpeedLogin(image: AppAssets.facebook),
                CustomSpeedLogin(image: AppAssets.google),
              ],
            ),

          ],
        ),

      ),
    );
  }
}