import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Edureka Todo",
      home: Todo(),
    );
  }
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Edureka Todo")),
        body: Column(
          children: [
            Card(
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(children: const [
                  TextField(
                    onChanged: null,
                    decoration: InputDecoration(labelText: "Add todo"),
                  ),
                  ElevatedButton(onPressed: null, child: Text("Add"))
                ]),
              ),
            ),
            Column(
              children: const [Text("das")],
            )
          ],
        ));
  }
}
