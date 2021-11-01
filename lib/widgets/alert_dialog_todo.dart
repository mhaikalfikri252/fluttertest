import 'package:flutter/material.dart';

class AlertDialogTodo extends StatelessWidget {
  // const AlertDialogTodo({Key? key}) : super(key: key);

  final TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Isi apa yang ingin dilakukan'),
      content: TextField(
        controller: todoController,
      ),
      actions: [
        TextButton(
          child: Text('Tambah'),
          onPressed: () {},
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Batal'),
        )
      ],
    );
  }
}
