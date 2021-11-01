import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/card_todo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _todoList = [];
  final TextEditingController _todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Todo App'),
        ),
      ),
      body: _todoListItem(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showMyDialog();
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }

  // to show alert dialog
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

  // to build list item with listview builder
  Widget _todoListItem() {
    return ListView.builder(
      itemCount: _todoList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(height: 10),
            CardTodo(
              textTodo: _todoList[index],
              iconTodo: IconButton(
                onPressed: () {
                  setState(() {
                    _todoList.removeAt(index);
                  });
                },
                icon: Icon(Icons.delete),
                color: Colors.blue,
              ),
            )
          ],
        );
      },
    );
  }
}
