import 'package:api_rest_consume/src/json_placeholdeer/models/to_do_model.dart';
import 'package:api_rest_consume/src/json_placeholdeer/services/to_do_service.dart';
import 'package:flutter/material.dart';

class ToDoStore extends ChangeNotifier {
  final toDoService = ToDoService();
  
  List<ToDoModel> _toDos = [];
  List<ToDoModel> get toDos => List<ToDoModel>.unmodifiable(_toDos);

  Future<void> getAllToDos() async {
    _toDos = await toDoService.getToDos();

    notifyListeners();
  }
}
