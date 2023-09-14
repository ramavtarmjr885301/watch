




import 'package:flutter/material.dart';
class Dialogs{
  static void showSnackbar(BuildContext, String msg){
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    // ScaffoldMessengerState.of(context).showSnackBar(SnackBar(content: Text(msg)));
    
   
  }
  static void showProgressBar(BuildContext context){
    showDialog(context: context, builder: (_)=>Center(child: const CircularProgressIndicator(
      color: Colors.blue,
    )));
  }
   
}