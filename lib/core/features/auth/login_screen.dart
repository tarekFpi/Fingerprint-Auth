import 'package:fingerprint_task/core/features/auth/auth_controller.dart';
import 'package:fingerprint_task/core/theme/color_scheme.dart';
import 'package:fingerprint_task/core/utils/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:get_storage/get_storage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final authController = Get.put(AuthController());

  void validator(){

    authController.authentication();
  }


  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
        child: Scaffold(
         backgroundColor:colorScheme.surfaceVariant,
         body: SingleChildScrollView(
          child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(
              height: 30,
              ),
              Align(
                alignment: Alignment.center,
                  child: Lottie.asset("assets/animation/figerpint.json",width: 300, height: 200)),

              Text(
                "Login Fingerprint",
                style: textTheme.titleMedium?.copyWith(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Fingerprint Auth",
                style: textTheme.titleMedium?.copyWith(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        //foregroundColor: colorScheme.onPrimary,
                        backgroundColor:HexColor('#855EA9'),

                      ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                      onPressed: (){

                        validator();
                      },
                      child: Text('Authentication Fingerprint',style: textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: lightColorScheme!.onPrimary)),
                    ),
                  ),
                ],
              ),
            ],
          ),
       ),
      ),
    ));
  }
}
