
import 'package:chat/share/widget/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget{
  final VoidCallback onPressed ;
  final String lable ;
  DefaultButton({required this.onPressed , required this.lable});
  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: onPressed,
        child: Text(lable,style: TextStyle(color: AppTheme.white,fontSize: 25 , fontWeight: FontWeight.w400),));


  }
}