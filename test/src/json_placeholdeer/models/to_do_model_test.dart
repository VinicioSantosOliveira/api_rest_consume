import 'package:api_rest_consume/src/json_placeholdeer/stores/to_do_store.dart';

void main() async {
  final store = ToDoStore();

  await store.getAllToDos();

  print(store.toDos[4].title);
}
