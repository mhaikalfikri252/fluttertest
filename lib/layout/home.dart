import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/floating_todo.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Todo App'),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            // CardTodo(
            //   textTodo: 'coba',
            //   // dateTodo: 'test',
            // ),
            // ListView(
            //   children: [
            //     ListTile(
            //       title: Text(
            //         // todoList,
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingTodo(),
    );
  }
}
