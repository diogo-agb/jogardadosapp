// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dado_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DadoController on _DadoController, Store {
  Computed<int> _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: '_DadoController.total'))
      .value;

  final _$dadoEsquerdoAtom = Atom(name: '_DadoController.dadoEsquerdo');

  @override
  int get dadoEsquerdo {
    _$dadoEsquerdoAtom.reportRead();
    return super.dadoEsquerdo;
  }

  @override
  set dadoEsquerdo(int value) {
    _$dadoEsquerdoAtom.reportWrite(value, super.dadoEsquerdo, () {
      super.dadoEsquerdo = value;
    });
  }

  final _$dadoDireitoAtom = Atom(name: '_DadoController.dadoDireito');

  @override
  int get dadoDireito {
    _$dadoDireitoAtom.reportRead();
    return super.dadoDireito;
  }

  @override
  set dadoDireito(int value) {
    _$dadoDireitoAtom.reportWrite(value, super.dadoDireito, () {
      super.dadoDireito = value;
    });
  }

  final _$_DadoControllerActionController =
      ActionController(name: '_DadoController');

  @override
  void rolar() {
    final _$actionInfo = _$_DadoControllerActionController.startAction(
        name: '_DadoController.rolar');
    try {
      return super.rolar();
    } finally {
      _$_DadoControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dadoEsquerdo: ${dadoEsquerdo},
dadoDireito: ${dadoDireito},
total: ${total}
    ''';
  }
}
