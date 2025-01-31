
import 'package:chat/setting/setting_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
 static const String routeName='/home';
  @override
  Widget build(BuildContext context) {
    return
      Container(
          decoration:const BoxDecoration(
            image:  DecorationImage(image: AssetImage("assets/image/appBar1.png")
                ,fit: BoxFit.cover),
          ),
          child: Scaffold(
           /// backgroundColor: Colors.transparent,
              appBar: AppBar(actions: const[ Icon(Icons.search,size: 40,color: Colors.white,)],
                title:const Text("Chat Now",style: TextStyle( color: Colors.white))
                ,backgroundColor: Colors.transparent,
              ),
              drawer: Setting(),
              body: Column(
                children: [Text('ahmad')],
              ),
            ),
      

    );
  }
}