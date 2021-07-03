import 'dart:math'; // para randomização (random)
import 'package:mobx/mobx.dart';
part 'dado_controller.g.dart';

class DadoController = _DadoController with _$DadoController;

abstract class _DadoController with Store {
  @observable
  int dadoEsquerdo = Random().nextInt(6) + 1;

  @observable
  int dadoDireito = Random().nextInt(6) + 1;

  @computed
  int get total => dadoEsquerdo + dadoDireito;

  @action
  void rolar() {
    dadoEsquerdo = Random().nextInt(6) + 1;
    dadoDireito = Random().nextInt(6) + 1;
  }
}
