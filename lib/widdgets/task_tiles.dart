import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkboxState: isChecked,
          toggleCheckboxState: (bool checkboxState) {
            setState(() {
              isChecked = checkboxState;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;
  const TaskCheckBox(
      {required this.checkboxState, required this.toggleCheckboxState});

  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: widget.checkboxState,
      onChanged: (checkboxState) {
        widget.toggleCheckboxState(checkboxState);
      },
    );
  }
}
