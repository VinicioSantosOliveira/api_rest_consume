import 'package:api_rest_consume/src/json_placeholdeer/datasources/local_to_do_datasource.dart';
import 'package:api_rest_consume/src/json_placeholdeer/datasources/remote_to_do_datasource.dart';
import 'package:api_rest_consume/src/json_placeholdeer/models/to_do_model.dart';
import 'package:api_rest_consume/src/json_placeholdeer/services/check_internet_service.dart';

class ToDoRepository {
  final remoteDatasource = RemoteToDoDatasource();
  final localDatasource = LocalToDoDatasource();
  final checkInternetService = CheckInternetService();

  Future<List<ToDoModel>> getToDos() async {
    late List list;
    if (await checkInternetService.isConnected()) {
      list = await remoteDatasource.getToDos();
      await localDatasource.saveToDos(list);
    } else {
      list = await localDatasource.getToDos();
    }

    final toDos = list.map(ToDoModel.fromJson).toList();
    return toDos;
  }

  Future<void> setToDo(ToDoModel model) async {
    await remoteDatasource.setToDos(model);
  }
}
