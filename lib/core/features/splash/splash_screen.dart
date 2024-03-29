import 'dart:async';
import 'package:fingerprint_task/core/features/auth/auth_controller.dart';
import 'package:fingerprint_task/core/features/auth/login_screen.dart';
import 'package:fingerprint_task/core/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


final storage = GetStorage();

final authController = Get.put(AuthController());


  @override
  void initState() {

    checkAuthState();

    super.initState();
  }

void checkAuthState() async {

  Timer(Duration(seconds: 3), () {

    Get.offAll(() => LoginScreen());
  });

}


@override
  Widget build(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
  final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor:colorScheme.surfaceVariant,
        body:Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: double.infinity,
                  height:300,
                  child: Lottie.asset("assets/animation/animation.json")
              ),
              Text("splash Screen",style: TextStyle(fontSize: 21,color: HexColor('#855EA9'),fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}

