import 'package:api_rest_consume/src/json_placeholdeer/stores/to_do_store.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final toDoStore = ToDoStore();

  @override
  Widget build(BuildContext context) {
    final toDos = toDoStore.toDos;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: toDos.length,
        itemBuilder: (_, index) {
          
        },
      ),
    );
  }
}
