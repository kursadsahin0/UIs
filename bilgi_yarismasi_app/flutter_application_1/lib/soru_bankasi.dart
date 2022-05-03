import 'package:flutter/material.dart';

import 'soru.dart';

class Testveri {
  int _questionsIndex = 0;
  List<Soru> _SoruBankasi = [
    Soru(
        soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false),
    Soru(
        soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true),
    Soru(soruMetni: 'Kelebeklerin ömrü bir gündür', soruYaniti: false),
    Soru(soruMetni: 'Dünya düzdür', soruYaniti: false),
    Soru(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true),
    Soru(soruMetni: 'Fransızlar 80 demek için, 4 - 20 der', soruYaniti: true),
  ];

  String getsoruMetni() {
    return _SoruBankasi[_questionsIndex].soruMetni;
  }

  bool getAnswer() {
    return _SoruBankasi[_questionsIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_questionsIndex < _SoruBankasi.length + 1) {
      _questionsIndex++;
    }
  }

  bool testBittiMi() {
    if (_questionsIndex >= _SoruBankasi.length + 1) {
      return true;
    } else {
      return false;
    }
  }

  void TestiSifirla() {
    _questionsIndex = 0;
  }
}
