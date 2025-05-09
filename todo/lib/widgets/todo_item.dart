import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import '../model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final onToDoChanged;
  final onDeleteChanged;
  const TodoItem({
    Key? key,
    required this.todo,
    required this.onDeleteChanged,
    required this.onToDoChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
          // print('clicked on the todo item');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              onDeleteChanged(todo.id);
            },
            color: Colors.white,
            icon: Icon(Icons.delete),
            iconSize: 18,
          ),
        ),
      ),
    );
  }
}
