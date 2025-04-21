class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({required this.id, required this.todoText, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Morning Exercise', isDone: true),
      Todo(id: '02', todoText: 'Buy groceries', isDone: true),
      Todo(id: '03', todoText: 'Going to office'),
      Todo(id: '04', todoText: 'Team meeting', isDone: false),
      Todo(id: '05', todoText: 'Work on mobile app for 2 hours'),
    ];
  }
}
