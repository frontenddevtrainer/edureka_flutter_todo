import 'dart:ui';

import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  final List todos;
  final Function markAsCompleted;
  Function delete;

  TodoList(this.todos, this.markAsCompleted, this.delete, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: [
              Checkbox(
                  value: todos[index].isCompleted,
                  onChanged: ((value) {
                    markAsCompleted(index, !!value!);
                  })),
              Text(
                todos[index].title,
                style: const TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: todos[index].isCompleted
                      ? () {
                          delete(index);
                        }
                      : null,
                  child: const Text("Delete"))
            ]),
          );
        }),
        separatorBuilder: ((context, index) {
          return const Divider(
            color: Colors.black,
          );
        }),
        itemCount: todos.length);
  }
}
