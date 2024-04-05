import 'package:api_rest_consume/src/json_placeholdeer/models/to_do_model.dart';
import 'package:api_rest_consume/src/json_placeholdeer/services/to_do_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  group('ToDoService.getToDos', () {
    test('Deve retornar uma lista de ToDoModel', () async {
      final service = ToDoService();

      final result = await service.getToDos();

      expect(result, isA<List<ToDoModel>>());
    });
  });
}
