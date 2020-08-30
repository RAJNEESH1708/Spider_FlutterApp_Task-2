import 'package:flutter/material.dart';
import 'splashScreen.dart';


void main() {
  runApp(Lenskart());
}




class Lenskart extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:  SplashScreen(),


    );


  }
}
