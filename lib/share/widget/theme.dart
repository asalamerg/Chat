
import 'package:flutter/material.dart';

class AppTheme{
  static const Color blu=Color(0XFF2872A4);
  static const Color white =Color(0xffFFFFFF);

  static ThemeData LightTheme=ThemeData(
   scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:const AppBarTheme(titleTextStyle:TextStyle( fontSize: 40 ,color: AppTheme.white, ) ),
    textTheme: const TextTheme(displayLarge: TextStyle(color: AppTheme.white,fontSize: 30, ),),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(backgroundColor: AppTheme.blu ,))
  );
}