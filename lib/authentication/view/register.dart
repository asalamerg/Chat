
 import 'package:chat/authentication/view/login.dart';
import 'package:chat/share/widget/default_button.dart';
import 'package:chat/share/widget/default_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName="/register";


  @override
  State<RegisterScreen> createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  TextEditingController controllerEmail =TextEditingController();
  TextEditingController controllerPassword =TextEditingController();
  TextEditingController controllerName =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image/appBar1.png"),
            fit: BoxFit.fill
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title:const Text("Register"),backgroundColor: Colors.transparent,),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              DefaultTextFormField(controller: controllerEmail, hint: "Email"),
              const SizedBox(height: 20,),

              DefaultTextFormField(controller: controllerPassword, hint: "Password"),
              const SizedBox(height: 20,),

              DefaultTextFormField(controller: controllerName, hint: "Name"),
              const SizedBox(height: 20,),

              DefaultButton(onPressed:Register, lable: "Register"),
              GestureDetector(
                onTap: (){  Navigator.of(context).pop(LoginScreen.routeName);},
                  child:const Align( alignment: Alignment.bottomLeft,child: const Text("Back",style: TextStyle(fontSize: 25 , ),))),


            ],
          ),
        ),
      ),
    );
  }
  void Register(){}
}