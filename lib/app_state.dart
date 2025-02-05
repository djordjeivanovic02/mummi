import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _SympthomsSelected =
          prefs.getStringList('ff_SympthomsSelected') ?? _SympthomsSelected;
    });
    _safeInit(() {
      _FeelingReasons =
          prefs.getStringList('ff_FeelingReasons') ?? _FeelingReasons;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _SympthomsSelected = [];
  List<String> get SympthomsSelected => _SympthomsSelected;
  set SympthomsSelected(List<String> value) {
    _SympthomsSelected = value;
    prefs.setStringList('ff_SympthomsSelected', value);
  }

  void addToSympthomsSelected(String value) {
    SympthomsSelected.add(value);
    prefs.setStringList('ff_SympthomsSelected', _SympthomsSelected);
  }

  void removeFromSympthomsSelected(String value) {
    SympthomsSelected.remove(value);
    prefs.setStringList('ff_SympthomsSelected', _SympthomsSelected);
  }

  void removeAtIndexFromSympthomsSelected(int index) {
    SympthomsSelected.removeAt(index);
    prefs.setStringList('ff_SympthomsSelected', _SympthomsSelected);
  }

  void updateSympthomsSelectedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    SympthomsSelected[index] = updateFn(_SympthomsSelected[index]);
    prefs.setStringList('ff_SympthomsSelected', _SympthomsSelected);
  }

  void insertAtIndexInSympthomsSelected(int index, String value) {
    SympthomsSelected.insert(index, value);
    prefs.setStringList('ff_SympthomsSelected', _SympthomsSelected);
  }

  List<String> _FeelingReasons = [];
  List<String> get FeelingReasons => _FeelingReasons;
  set FeelingReasons(List<String> value) {
    _FeelingReasons = value;
    prefs.setStringList('ff_FeelingReasons', value);
  }

  void addToFeelingReasons(String value) {
    FeelingReasons.add(value);
    prefs.setStringList('ff_FeelingReasons', _FeelingReasons);
  }

  void removeFromFeelingReasons(String value) {
    FeelingReasons.remove(value);
    prefs.setStringList('ff_FeelingReasons', _FeelingReasons);
  }

  void removeAtIndexFromFeelingReasons(int index) {
    FeelingReasons.removeAt(index);
    prefs.setStringList('ff_FeelingReasons', _FeelingReasons);
  }

  void updateFeelingReasonsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    FeelingReasons[index] = updateFn(_FeelingReasons[index]);
    prefs.setStringList('ff_FeelingReasons', _FeelingReasons);
  }

  void insertAtIndexInFeelingReasons(int index, String value) {
    FeelingReasons.insert(index, value);
    prefs.setStringList('ff_FeelingReasons', _FeelingReasons);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
