import 'package:flutter/material.dart';

class FloatingTodo extends StatefulWidget {
  const FloatingTodo({Key? key}) : super(key: key);

  @override
  State<FloatingTodo> createState() => _FloatingTodoState();
}

class _FloatingTodoState extends State<FloatingTodo> {
  final List<String> _todoList = [];
  final TextEditingController _todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _showMyDialog();
      },
      child: const Icon(Icons.add),
      backgroundColor: Colors.blue,
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add your task!'),
          content: TextField(
            controller: _todoText,
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Add'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _todoList.add(_todoText.text);
                  _todoText.clear();
                });
              },
            ),
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _todoItem(String title) {
    return ListTile(
      title: Text(title),
    );
  }

  Widget _buildTodoList() {
    return ListView.builder(itemBuilder: (context, index) {
      return _todoItem(_todoList[index]);
    });
  }
}


