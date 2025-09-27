import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false ;
  void checkboxCallback (bool checkboxState){
    setState(() {
      isChecked = checkboxState;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a task',
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough: null),),
      trailing: TaskCheckbox(isChecked,checkboxCallback),
      //trailing: TaskCheckbox(
      //         checkboxState: isChecked,
      //         onChanged: checkboxCallback, /
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  //final Function toggleCheckboxState;  not work needed set valuechanged bool?
  final ValueChanged<bool?> toggleCheckboxState;
  TaskCheckbox(this.checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}