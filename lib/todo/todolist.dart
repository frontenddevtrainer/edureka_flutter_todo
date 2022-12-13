import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  List todos;
  Function markAsCompleted;
  Function delete;

  TodoList(
      {super.key,
      required this.delete,
      required this.markAsCompleted,
      required this.todos});

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
