//?To do = fazer

class ToDoModel {
  final int id;
  final String title;
  final bool isChecked;

  ToDoModel({required this.title, required this.isChecked, required this.id});

  factory ToDoModel.fromJson(dynamic json) {
    return ToDoModel(
      id: json['id'],
      title: json['title'],
      isChecked: json['completed'],
    );
  }
}
