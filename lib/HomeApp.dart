import 'package:flutter/material.dart';
import 'dart:math';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  // Setting Image One
  AssetImage one1 = AssetImage('images/one.png');
  AssetImage two1 = AssetImage('images/two.png');
  AssetImage three1 = AssetImage('images/three.png');
  AssetImage four1 = AssetImage('images/four.png');
  AssetImage five1 = AssetImage('images/five.png');
  AssetImage six1 = AssetImage('images/six.png');

  // Setting Image Two

  AssetImage one2 = AssetImage('images/one.png');
  AssetImage two2 = AssetImage('images/two.png');
  AssetImage three2 = AssetImage('images/three.png');
  AssetImage four2 = AssetImage('images/four.png');
  AssetImage five2 = AssetImage('images/five.png');
  AssetImage six2 = AssetImage('images/six.png');

  AssetImage diceImageOne;
  AssetImage diceImageTwo;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImageOne = one1;
      diceImageTwo = six2;
    });
  }

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int rnd = (1 + Random().nextInt(6));
    AssetImage newImage1;
    AssetImage newImage2;

    switch (random) {
      case 1:
        newImage1 = one1;
        break;
      case 2:
        newImage1 = two1;
        break;
      case 3:
        newImage1 = three1;
        break;
      case 4:
        newImage1 = four1;
        break;
      case 5:
        newImage1 = five1;
        break;
      case 6:
        newImage1 = six1;
        break;
    }
    switch (rnd) {
      case 1:
        newImage2 = one1;
        break;
      case 2:
        newImage2 = two1;
        break;
      case 3:
        newImage2 = three1;
        break;
      case 4:
        newImage2 = four1;
        break;
      case 5:
        newImage2 = five1;
        break;
      case 6:
        newImage2 = six1;
        break;
    }
    setState(() {
      diceImageOne = newImage1;
      diceImageTwo = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: diceImageOne,
                        width: 100.0,
                        height: 100.0,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: diceImageTwo,
                        width: 100.0,
                        height: 100.0,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child: Text(
                      'Roll the dice!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: rollDice,
                    splashColor: Colors.amberAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
