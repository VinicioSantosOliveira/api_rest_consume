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
  void initState() {
    super.initState();
    toDoStore.addListener(() {
      setState(() {});
    });
    toDoStore.getAllToDos();
  }

  @override
  Widget build(BuildContext context) {
    final todos = toDoStore.toDos;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (_, index) {
          final todo = todos[index];
          
          return CheckboxListTile(
            title: Text(todo.title),
            value: todo.isChecked,
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}
