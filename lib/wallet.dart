import 'package:flutter/material.dart';


class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
        backgroundColor: Color(0xff203341),
      ),
      body:Image.asset("assets/images/wallet.jpg",fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,),
    );
  }
}