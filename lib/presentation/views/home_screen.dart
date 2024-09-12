import 'package:flutter/material.dart';
import 'package:loginpage/core/constant/assets_const.dart';
import 'package:loginpage/core/constant/style.dart';
import 'package:loginpage/presentation/views/login_screen.dart';


class Intro extends StatelessWidget {
  const Intro ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
                width: 300,
                height: 400,
                child: Image.asset(AppAssets.JopHere)),
             Container(
               margin: const EdgeInsets.all(60),
               height: 200,
               width: 300,
               child: const Center(
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Discover Your\n Dream Job here',
                      style: TextStyle(fontSize: 30,
                          color: AppColor.blueColor, fontWeight: FontWeight.bold, ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      textAlign: TextAlign.center,
                      'Explore all the existing job roles based on your interest and study major',
                      style: TextStyle(


                           fontWeight: FontWeight.w400, ),
                    ),
                  ],
                ),
                           ),
             ),

          ],

        ),
        floatingActionButton:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColor.blueColor,
                  borderRadius:  BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap:() =>   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  ) ,
                  child: const Text("Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 50,
                decoration: BoxDecoration(

                  borderRadius:  BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  child: const Text("Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),
                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
