// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

const TODOS = 'TODOS';

class LocalToDoDatasource {
  Future<List> getToDos() async {
    final shared = await SharedPreferences.getInstance();
    final jsonString = shared.getString(TODOS);

    return jsonDecode(jsonString ?? "[]");
  }

  Future<void> saveToDos(dynamic json) async {
    final shared = await SharedPreferences.getInstance();
    await shared.setString(TODOS, jsonEncode(json));
  }
}
