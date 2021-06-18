import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';

class IntrayTodo extends StatelessWidget {
  final String title;
  final String keyValue;
  IntrayTodo({required this.keyValue, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20, left: 10, right: 10),
      height: 100,
      decoration: BoxDecoration(
          color: redColor,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            )
          ]),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[Text(title, style: darkTodoTitle)],
          )
        ],
      ),
    );
  }
}
