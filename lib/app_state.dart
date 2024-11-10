import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _cartsum = 0.0;
  double get cartsum => _cartsum;
  set cartsum(double value) {
    _cartsum = value;
  }

  int _cartitems = 0;
  int get cartitems => _cartitems;
  set cartitems(int value) {
    _cartitems = value;
  }
}
