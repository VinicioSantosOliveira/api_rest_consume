import 'package:api_rest_consume/src/json_placeholdeer/models/to_do_model.dart';
import 'package:dio/dio.dart';

class ToDoService {
  final Dio dio;

  ToDoService(this.dio);

  Future<List<ToDoModel>> getToDos() async {
    final response = await dio.get("https://jsonplaceholder.typicode.com/todos");
    final list = response.data as List;

    //(e) => ToDoModel.fromJson(e)
    final toDos = list.map(ToDoModel.fromJson).toList();

    return toDos;
  }
}
