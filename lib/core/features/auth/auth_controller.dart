
import 'package:fingerprint_task/core/features/home/home_screen.dart';
import 'package:fingerprint_task/core/network/dio_client.dart';
import 'package:fingerprint_task/core/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

 class AuthController extends GetxController{

    final dioClient = DioClient.instance;


final LocalAuthentication auth = LocalAuthentication();


   Future authentication () async{

        try {

          final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;

          if(canAuthenticateWithBiometrics){

              bool result = await auth.authenticate(
                localizedReason: 'Scan your Biometric  to proceed..',
                  options: const AuthenticationOptions(biometricOnly: true,stickyAuth: true,)
                 );

            if(result){

              Get.to(const HomeScreen());
            }else{
              Toast.errorToast("Fingerprint  Unauthorized ??");
            }

          }else{
            Toast.errorToast("Biometric Auth Failed..");
          }

     } catch(e) {
          Toast.errorToast(e.toString());
           EasyLoading.dismiss();
        }
   }

 }