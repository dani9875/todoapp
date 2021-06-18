import 'package:flutter/material.dart';
import 'package:todoapp/models/global.dart';
import 'package:todoapp/models/widgets/Intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<IntrayTodo> todoItems = [];
  @override
  Widget build(BuildContext context) {
    todoItems = getList();
    return Container(
        color: darkGreyColor, child: _buildReorderableListSimple(context)

        //ReorderableListView(
        //padding: EdgeInsets.only(top: 200),
        //children: todoItems,
        //onReorder: _onReorder,
        //),
        );
  }

  Widget _buildListTile(BuildContext context, IntrayTodo item) {
    return ListTile(
      key: Key(item.keyValue),
      title: Text(item.title),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return ReorderableListView(
      padding: EdgeInsets.only(top: 20.0),
      children: todoItems
          .map((IntrayTodo item) => _buildListTile(context, item))
          .toList(),
      onReorder: (oldIndex, newIndex) {
        setState(() {
          IntrayTodo item = todoItems[oldIndex];
          todoItems.remove(item);
          todoItems.insert(newIndex, item);
        });
      },
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final IntrayTodo item = todoItems.removeAt(oldIndex);
      todoItems.insert(newIndex, item);
    });
  }

  List<IntrayTodo> getList() {
    for (int i = 0; i < 30; i++) {
      todoItems.add(IntrayTodo(keyValue: i.toString(), title: "Titleee"));
    }
    return todoItems;
  }
}
