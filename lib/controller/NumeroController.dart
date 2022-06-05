import 'package:app_numerico/model/numero.dart';

class NumeroController{
  static final NumeroController instance = NumeroController._();

  NumeroController._();

  void sumNum() {
    Numero.instance.setNum(Numero.instance.getNum() +5);
  }

  void subtractNum() {
    Numero.instance.setNum(Numero.instance.getNum() -5);
  }

  void multiplyNum() {
    Numero.instance.setNum(Numero.instance.getNum() *2);
  }

  void resetNum() {
    Numero.instance.setNum(0);
  }
}