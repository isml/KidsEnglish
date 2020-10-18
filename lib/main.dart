import 'package:flutter/material.dart';
import 'package:kidsenglish/screens/homePage.dart';

import 'package:splash_screen_view/ColorizeAnimatedText.dart';
import 'package:splash_screen_view/ScaleAnimatedText.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:splash_screen_view/TyperAnimatedText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
        primarySwatch: Colors.cyan,
      
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      
      home:SplashScreenView(
      home: HomePage(),
      duration: 3500,
      imageSize: 250,
      imageSrc: "assets/images/fil.png",
      text: "Kids English",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.bold
      ),
      colors: [
         Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.green[100],
    )
    
    );
  }
}

