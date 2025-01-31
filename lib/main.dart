import 'package:chat/authentication/view/login.dart';
import 'package:chat/authentication/view/register.dart';
import 'package:chat/share/widget/theme.dart';
import 'package:chat/share/view/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Chat());
}

class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
   routes: {
     LoginScreen.routeName :(_)=>LoginScreen(),
     RegisterScreen.routeName :(_)=>RegisterScreen(),
     HomeScreen.routeName : (_)=>HomeScreen(),

   },initialRoute: LoginScreen.routeName,
    theme:  AppTheme.LightTheme,
      themeMode: ThemeMode.light,


    );


  }
}