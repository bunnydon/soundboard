import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Onepiece());

// ignore: must_be_immutable
class Onepiece extends StatelessWidget {
  Widget builtKey({
    int keyNumber,
    int keyNum2,
    String buttonName,
    String buttonName1,
    Color colorName,
    Color colorName1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 150.0,
          width: 150.0,
          child: RaisedButton(
            color: colorName,
            child: Text(
              buttonName,
            ),
            onPressed: () {
              playmusic(keyNumber);
            },
          ),
        ),
        Container(
          height: 150.0,
          width: 150.0,
          child: RaisedButton(
            color: colorName1,
            child: Text(
              buttonName1,
            ),
            onPressed: () {
              playmusic(keyNum2);
            },
          ),
        ),
      ],
    );
  }

  int keyNumber;

  void playmusic(int keyNumber) {
    final player = AudioCache();
    player.play("tone$keyNumber.mp3");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OnePiece",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text(
              "ONEPIECE",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              builtKey(
                keyNumber: 1,
                buttonName: "BLACK BEARD",
                colorName: Colors.grey,
                keyNum2: 2,
                buttonName1: "LUFFY",
                colorName1: Colors.grey,
              ),
              builtKey(
                keyNumber: 3,
                buttonName: "PIRATE KING",
                colorName: Colors.grey,
                keyNum2: 4,
                buttonName1: "RORONOA ZORO",
                colorName1: Colors.grey,
              ),
              builtKey(
                keyNumber: 5,
                buttonName: "SANJI",
                colorName: Colors.grey,
                keyNum2: 6,
                buttonName1: "BROOK",
                colorName1: Colors.grey,
              ),
              builtKey(
                keyNumber: 7,
                buttonName: "NAMI",
                colorName: Colors.grey,
                keyNum2: 8,
                buttonName1: "USSOP",
                colorName1: Colors.grey,
              ),
            ],
          )),
    );
  }
}
