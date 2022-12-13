import 'package:flutter/material.dart';
import "./newtodo.dart";
import "./todolist.dart";
import "../models/todo.dart";

class Todos extends StatefulWidget {
  const Todos({super.key});

  @override
  State<Todos> createState() => _TodosState();
}

class _TodosState extends State<Todos> {
  final List<Todo> _todos = [];

  void _addNewTodo(String title) {
    final newTodo = Todo(title: title, isCompleted: false);

    setState(() {
      _todos.add(newTodo);
    });
  }

  void markAsCompleted(int index, bool isCompleted) {
    setState(() {
      _todos[index].isCompleted = isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTodo(_addNewTodo), TodoList(_todos, markAsCompleted)],
    );
  }
}
