import 'dart:convert';
import 'package:api_rest_consume/src/json_placeholdeer/services/to_do_service.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements DioForNative {}

class ResponseMock extends Mock implements Response {}

void main() async {
  late ResponseMock response;
  late DioMock dio;
  
  setUp(() {
    response = ResponseMock();
    dio = DioMock();
  });

  tearDown(() {});

  group('ToDoService.getToDos', () {
    test('Deve retornar uma lista de ToDoModel', () async {
      when(() => response.data).thenReturn(jsonDecode(jsonText));
      when(() => dio.get(any())).thenAnswer((_) async => response);

      final service = ToDoService(dio);

      final result = await service.getToDos();

      expect(result.length, 4);
      expect(result[0].title, 'delectus aut autem');
    });
  });
}

const jsonText = """
  [{
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
    },
    {
        "userId": 1,
        "id": 2,
        "title": "quis ut nam facilis et officia qui",
        "completed": false
    },
    {
        "userId": 1,
        "id": 3,
        "title": "fugiat veniam minus",
        "completed": false
    },
    {
        "userId": 1,
        "id": 4,
        "title": "et porro tempora",
        "completed": true
    }]
""";
