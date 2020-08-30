import 'package:flutter/material.dart';


class Favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites"),
        backgroundColor: Color(0xff203341),
      ),
      body:Image.asset("assets/images/fav.jpg",fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,),
    );
  }
}