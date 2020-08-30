import 'package:flutter/material.dart';

class Choice {
  const Choice(this.image);

  final String image;

}

const List<Choice> choices = const <Choice>[
  const Choice('assets/images_gen/m.jpg'),
  const Choice('assets/images_gen/w.jpg'),
  const Choice('assets/images_gen/k.jpg'),
];

List<bool> _list = [true, false, false];


class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {

  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                splashColor:Color(0xff00BAC6),
                color: Color(0xff00BAC6),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                highlightColor: Color(0xff00BAC6),
                elevation: 5,
                //color: Color(0xff00BAC6),

                  onPressed: () {
                  _select(choices[0]);
                  // _list[0] = !_list[0];
                  // _list[1] = _list[1];
                  // _list[2] = _list[2];

                },
                child: Text('MEN', style: TextStyle(fontSize: 20)),
              ),

              RaisedButton(
              textColor: Color(0xff565F64),
                shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff565F64)),borderRadius: BorderRadius.circular(10)),
                hoverColor: Color(0xff00BAC6),
                elevation: 5,
                splashColor:Color(0xff00BAC6),
                color:  Colors.white,
                onPressed: () {
                  _select(choices[1]);

                  },
                child: const Text('WOMEN', style: TextStyle(fontSize: 20)),
              ),

              RaisedButton(
                shape: RoundedRectangleBorder(side: BorderSide(color: Color(0xff565F64)),borderRadius: BorderRadius.circular(10)),
                hoverColor: Color(0xff00BAC6),
                elevation: 5,
                textColor: Color(0xff565F64),
                splashColor: Color(0xff00BAC6) ,
                color: Colors.white,
                onPressed: () {
                  _select(choices[2]);
                },
                child: const Text('KIDS', style: TextStyle(fontSize: 20)),

              ),
            ],
          ),

        ),
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: ChoiceCard(choice: _selectedChoice),

       ),
      ],
    );
  }
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(choice.image),
          ],
        ),
      ),
    );
  }
}



