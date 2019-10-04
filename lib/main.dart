import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[600],
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.grey[900],
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  magicBall = Random().nextInt(5) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/ball$magicBall.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
