import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'dado_controller.dart';

class DadoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dado = Provider.of<DadoController>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Observer(
                  builder: (context) => Image.asset(
                    'assets/images/dado_${dado.dadoEsquerdo}.png',
                    height: 140,
                  ),
                ),
              ),
              Expanded(
                child: Observer(
                  builder: (context) => Image.asset(
                    'assets/images/dado_${dado.dadoDireito}.png',
                    height: 140,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Observer(
              builder: (context) => Text(
                'Resultado: ${dado.total}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 120),
            child: TextButton(
              // shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(26.0),
              //     side: BorderSide(color: Colors.black)),
              // splashColor: Colors.yellow,
              // color: Colors.black,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              child: Text(
                'Rolar os dados',
                style: TextStyle(color: Colors.yellow, fontSize: 40),
              ),
              onPressed: () {
                dado.rolar();
              },
            ),
          )
        ],
      ),
    );
  }
}
