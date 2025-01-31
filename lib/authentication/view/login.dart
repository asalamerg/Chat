
import 'package:chat/authentication/view/register.dart';
import 'package:chat/share/widget/default_button.dart';
import 'package:chat/share/widget/default_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/Login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController controllerEmail = TextEditingController();

 final TextEditingController controllerPassword=TextEditingController();

  //final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
           return Container(
             decoration: const BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/image/appBar1.png"),
             fit: BoxFit.fill
               ),
             ),
             child: Scaffold(

               appBar: AppBar(title:const Text("Login",textAlign: TextAlign.center,),backgroundColor: Colors.transparent,),
               body: Padding(
                 padding: const EdgeInsets.all(15),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                   const Text("Welcome Back !",style: TextStyle(fontSize: 30 , fontWeight:FontWeight.w700),),
                   DefaultTextFormField(controller: controllerEmail, hint: "Email"),
                   const SizedBox(height:  20,),
                   DefaultTextFormField(controller: controllerPassword, hint: "password"),
                     const SizedBox(height:  20,),

                    const Align( alignment: Alignment.bottomLeft ,child:  const Text("Forgot Password",style: TextStyle(fontSize: 25),)),
                    const SizedBox(height:  15,),

                   DefaultButton(onPressed: AddLogin, lable: "Add",),
                     const SizedBox(height:  10,),

                     GestureDetector(onTap:(){
                     Navigator.of(context).pushNamed(RegisterScreen.routeName);
                   } ,
                       child:const Align( alignment: Alignment.bottomLeft,child: const Text("Create Account",style: TextStyle(fontSize: 25),)),
                   )



                 ],),
               ),


             ),
           );
  }
  void AddLogin(){}
}

