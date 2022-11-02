// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "I'm just a small planet that gets lost daily in your entire universe.",
    "New friendships will always be welcome to give color and joy to my day to day.",
    "Gratitude is not payment, but a recognition that is shown in everyday life.",
    "Not every important change happens suddenly and makes noise, some are silent and are made on a daily basis."
  ];

  var _fraseGerada = 'Click bellow to generate new phrase';

  void _gerarFrase() {
    // 0, 1 , 2, 3
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily phrase'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/logo.png'),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 25, fontStyle: FontStyle.italic, color: Colors.black),
              ),
              RaisedButton(
                color: Colors.green,
                onPressed: _gerarFrase,
                child: const Text(
                  'New phrase',
                  style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
