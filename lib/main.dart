import 'package:flutter/material.dart';

void main() {
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