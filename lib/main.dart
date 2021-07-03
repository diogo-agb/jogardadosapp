import 'package:flutter/material.dart';

import 'jogo_dados.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogar Dados',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JogoDados(),
    );
  }
}
