import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final List todos;

  const TodoList(this.todos, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Text(todos[index].title);
        }),
        separatorBuilder: ((context, index) {
          return const Divider(
            color: Colors.black,
          );
        }),
        itemCount: todos.length);
  }
}
