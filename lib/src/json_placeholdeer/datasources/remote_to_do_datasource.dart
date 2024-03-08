import 'package:api_rest_consume/src/json_placeholdeer/models/to_do_model.dart';
import 'package:dio/dio.dart';

class RemoteToDoDatasource {
  final dio = Dio();

  Future<dynamic> getToDos() async {
    final response =
        await dio.get("https://jsonplaceholder.typicode.com/todos");
    return response.data;
  }

  Future<dynamic> setToDos(ToDoModel model) async {
    final data = {
      'id': model.id,
      'title': model.title,
    };

    final response =
        await dio.put("https://jsonplaceholder.typicode.com/todos", data: data);
    return response.data;
  }
}
