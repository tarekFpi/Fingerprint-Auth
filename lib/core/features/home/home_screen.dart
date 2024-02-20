
import 'package:fingerprint_task/core/utils/hexcolor.dart';
import 'package:fingerprint_task/core/utils/toast.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

 class HomeScreen extends StatefulWidget {
   const HomeScreen({Key? key}) : super(key: key);

   @override
   State<HomeScreen> createState() => _HomeScreenState();
 }

 class _HomeScreenState extends State<HomeScreen> {



   @override
   Widget build(BuildContext context) {
     final colorScheme = Theme.of(context).colorScheme;
     final textTheme = Theme.of(context).textTheme;

     return SafeArea(child: Scaffold(
       backgroundColor:colorScheme.surfaceVariant,
         appBar: AppBar(
           backgroundColor:colorScheme.surface,
             elevation: 2,
             centerTitle: true,
             title: Text(
               "Home Page",
               style: textTheme.titleMedium?.copyWith(
                   color: HexColor('#855EA9'),
                   fontSize: 18,
                   fontWeight: FontWeight.bold),
             ),actions: [

           IconButton(
             onPressed: () {
             },
             icon: CircleAvatar(
               child: Icon(FluentIcons.alert_24_regular,size: 24,),
               radius: 24.0,
               backgroundColor: HexColor("#F5F6FC"),
             ),
           )
         ],),

   body: Center(
     child: SingleChildScrollView(
       child: Container(
         padding: const EdgeInsets.symmetric(horizontal: 16),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
     

             Text(
               "Fingerprint Authentication SuccessFull...",
               style: textTheme.bodyMedium?.copyWith(
                   color: Colors.green, fontSize: 18,fontWeight: FontWeight.w500),
             ),
     
           ],
         ),
       ),
     ),
   ),
     ));
   }
 }
