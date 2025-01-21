import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
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

  String _mail = '';
  String get mail => _mail;
  set mail(String value) {
    _mail = value;
  }

  DataStruct _loginReponseAppState = DataStruct.fromSerializableMap(jsonDecode(
      '{\"user\":\"{\\\"roles\\\":\\\"[]\\\"}\",\"church\":\"{}\"}'));
  DataStruct get loginReponseAppState => _loginReponseAppState;
  set loginReponseAppState(DataStruct value) {
    _loginReponseAppState = value;
  }

  void updateLoginReponseAppStateStruct(Function(DataStruct) updateFn) {
    updateFn(_loginReponseAppState);
  }
}
