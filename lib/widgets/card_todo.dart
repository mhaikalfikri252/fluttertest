import 'package:flutter/material.dart';

// create custom card
class CardTodo extends StatefulWidget {
  const CardTodo({Key? key, this.textTodo, this.iconTodo}) : super(key: key);

  final String? textTodo;
  final IconButton? iconTodo;

  @override
  State<CardTodo> createState() => _CardTodoState();
}

class _CardTodoState extends State<CardTodo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.blue),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                widget.textTodo ?? "",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Spacer(),
            Container(
              child: widget.iconTodo,
            )
          ],
        ),
      ),
    );
  }
}
