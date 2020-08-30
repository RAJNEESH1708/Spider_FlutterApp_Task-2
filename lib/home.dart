import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'slider.dart';
import 'slider2.dart';
import 'gender.dart';
import 'search.dart';
import 'wallet.dart';
import 'favourite.dart';
import 'cart.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff203341),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                  new Search())
              );

            },
          ),
          IconButton(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                  new Wallet())
              );

            },
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                  new Favourite())
              );

            },
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) =>
                  new Cart()),
              );

            },
          ),
        ],

          ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader (
              padding: EdgeInsets.all(0),

            child: Image.asset('assets/images/account_nav-pic.jpg'),

        decoration: BoxDecoration(
           color: Colors.blue,
        ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text('Your Order'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(

              title: Text('                 Eyeglasses'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(

              title: Text('                Sunglasses'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.lens),
              title: Text('Contact lense'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(

              title: Text('          Gold Members Offers'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_laundry_service),
              title: Text('Services'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Rate Us'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.event_note),
              title: Text('FAQ'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.mobile_screen_share),
              title: Text('Agent Screen Share'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
             // Add this to force the bottom items to the lowest point
            Column(
              children: <Widget>[
                _createFooterItem(
                    text: 'CONTACT US       MORE',
                ),
              ],
            ),
          ],
        ),

      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            child: Image.asset("assets/images/nav-image.png"),
          ),
          Container(
            margin: EdgeInsets.all( 0),
              padding: EdgeInsets.all(0),
              height: 234,
              child: CarouselWithIndicatorDemo()
          ),
          Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(0),
              child: Gender()
          ),
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(5),
            child: Image.asset("assets/general/1.jpg"),
          ),
          Container(
              margin: EdgeInsets.all( 0),
              padding: EdgeInsets.all(0),
              height: 234,
              child: CarouselWithIndicator()
          ),
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(5),
            child: Image.asset("assets/general/2.jpg"),
          ),
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(5),
            child: Image.asset("assets/general/3.jpg"),
          ),Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(5),
            child: Image.asset("assets/general/4.jpg"),
          ),Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(5),
            child: Image.asset("assets/general/5.jpg"),
          ),
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(5),
            child: Image.asset("assets/general/6.jpg"),
          ),
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            child: Image.asset("assets/images/bottom.png"),
          ),
  ]
    ),
    );
  }
}



Widget _createFooterItem({IconData icon, String text, GestureTapCallback onTap}){
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}


