import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'dado_controller.dart';
import 'dados_screen.dart';

class JogoDados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<DadoController>(
      create: (context) => DadoController(),
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            'Role os Dados',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
              fontSize: 30,
            ),
          ),
        ),
        body: SafeArea(
          child: DadoScreen(),
        ),
      ),
    );
  }
}
