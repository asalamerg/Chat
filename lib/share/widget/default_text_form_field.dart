
import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget{
  TextEditingController  controller ;
  String hint;
  DefaultTextFormField({required this.controller , required this.hint});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:  controller ,
      decoration: InputDecoration(hintText:hint ),

    );
  }

  }


