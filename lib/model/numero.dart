import 'package:flutter/material.dart';

class Numero {
  
  int _num;

  static final Numero instance = Numero._(2);

  Numero._(this._num);

  int getNum(){
    return _num;
  }

  void setNum(int num){
    _num = num;
  }
}