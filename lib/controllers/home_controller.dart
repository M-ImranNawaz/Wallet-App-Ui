import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_app/models/balance.dart';

class HomeController extends GetxController {
  List<Balance> cardData = [
    Balance(balance: '458.78', cNumber: '1233456783', eDate: '06/22'),
    Balance(balance: '708.88', cNumber: '1223456789', eDate: '08/22'),
    Balance(balance: '235.09', cNumber: '0123456785', eDate: '09/22'),
    Balance(balance: '197.89', cNumber: '1123456780', eDate: '07/22'),
    Balance(balance: '458.78', cNumber: '1233456783', eDate: '06/22'),
    Balance(balance: '708.88', cNumber: '1223456789', eDate: '08/22'),
    Balance(balance: '235.09', cNumber: '0123456785', eDate: '09/22'),
    Balance(balance: '197.89', cNumber: '1123456780', eDate: '07/22'),
    Balance(balance: '458.78', cNumber: '1233456783', eDate: '06/22'),
    Balance(balance: '708.88', cNumber: '1223456789', eDate: '08/22'),
    Balance(balance: '235.09', cNumber: '0123456785', eDate: '09/22'),
    Balance(balance: '197.89', cNumber: '1123456780', eDate: '07/22'),
  ];
  List colors = [
    Colors.purple,
    Colors.pink,
    Colors.blue,
    Colors.purpleAccent,
    Colors.blueAccent,
    Colors.green,
    Colors.orange,
  ];
  getColor(int index) {
    if (index > colors.length-1) {
      return colors.elementAt(Random().nextInt(colors.length));
    }
    return colors.elementAt(index);
  }
}
