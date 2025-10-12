import 'package:flutter/material.dart';/*

(bool checkboxState {
  setState){
  isChecked = checkboxState;
  });
},*/


class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  //final Function checkboxCallback;
  final ValueChanged<bool?>? onChanged; // nullable allowed

  const TaskTile({
    super.key,
    required this.isChecked,
    required this.taskTitle,
   // required this.checkboxCallback,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (bool? value) {
         // print('Checkbox changed to: $value');  // 👈 prints in the debug console
          if (onChanged != null) {
            onChanged!(value); // call the passed-in callback
          }
        },
      ),
    );
  }
}