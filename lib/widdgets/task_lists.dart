import 'package:flutter/material.dart';
import 'package:todoey/widdgets/task_tiles.dart';

class TasksLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
