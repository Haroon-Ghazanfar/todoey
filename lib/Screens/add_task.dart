import 'package:flutter/material.dart';

class Add_Task extends StatelessWidget {
  const Add_Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              textAlign: TextAlign.center,
              "Add Task",
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            TextFormField(
              autofocus: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
