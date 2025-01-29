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
  home: Scaffold(
      appBar: AppBar(),
      body: Center(child: const Text("ahmad"),),
    )
    );

  }
}