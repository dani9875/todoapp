import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/Intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    var list = getList();
    return Container(
      color: darkGreyColor,
      child: ListView(padding: EdgeInsets.only(top: 200), children: list),
    );
  }

  List<Widget> getList() {
    List<IntrayTodo> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(IntrayTodo(title: "Titleee"));
    }
    return list;
  }
}
