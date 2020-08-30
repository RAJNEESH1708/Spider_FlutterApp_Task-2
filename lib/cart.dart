import 'package:flutter/material.dart';


class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Color(0xff203341),
      ),
      body: Image.asset("assets/images/cart.jpg",fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,),
    );
  }
}