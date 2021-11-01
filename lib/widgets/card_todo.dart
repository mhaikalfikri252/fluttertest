import 'package:flutter/material.dart';

class CardTodo extends StatelessWidget {
  const CardTodo({Key? key, this.textTodo}) : super(key: key);

  final String? textTodo;
  // final String? dateTodo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 365,
      height: 80,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.blue),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 13,
            ),
            Container(
              margin: EdgeInsets.only(right: 280),
              child: Text(
                textTodo ?? "",
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.only(right: 285),
            //   child: Text(dateTodo ?? ""),
            // ),
          ],
        ),
      ),
    );
  }
}
