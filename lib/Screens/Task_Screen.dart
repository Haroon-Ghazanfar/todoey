// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todoey/Screens/add_task.dart';
import 'package:todoey/widdgets/task_lists.dart';

// ignore: camel_case_types
class Task_Screen extends StatelessWidget {
  const Task_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            child: const Icon(Icons.add),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  builder: (context) => Add_Task());
            }),
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 40,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Todoey",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "12 Tasks",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TasksLists(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
