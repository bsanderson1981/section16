import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Add Task',
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.lightBlueAccent,
      ),),
          TextField(),

        ],
      ),

    );
  }
}


