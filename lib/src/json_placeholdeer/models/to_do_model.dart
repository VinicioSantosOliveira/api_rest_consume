//?To do = fazer

class ToDoModel {
  final String title;
  final bool isChecked;

  ToDoModel({required this.title, required this.isChecked});

  factory ToDoModel.fromJson(dynamic json) {
    return ToDoModel(
        title: json['title'],
        isChecked: json['completed'],
      );
  }
}
