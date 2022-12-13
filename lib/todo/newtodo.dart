import "package:flutter/material.dart";

class NewTodo extends StatelessWidget {
  final Function addTodo;
  final titleController = TextEditingController();

  NewTodo(this.addTodo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: "Add todo"),
          ),
          ElevatedButton(
              onPressed: (() {
                addTodo(titleController.text);
              }),
              child: const Text("Add"))
        ]),
      ),
    );
  }
}
