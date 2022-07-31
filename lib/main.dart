import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text('Ask Me Anything!'),
        ),
      ),
      body: BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballFace = 1;

  void ballRoll() {
    setState(() {
      ballFace = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset('images/ball$ballFace.png'),
                onPressed: () {
                  ballRoll();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
