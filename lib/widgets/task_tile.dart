import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false ;

  //had to alter code checkboxCallback to allow false and not null per chatgpt suggestions to
  //fix red line error made by commnet out code below

  //did not do move code below to make an annonimious funtions broke my code
  void checkboxCallback(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState ?? false; // coerce null -> false
    });
  }
/*  void _checkboxCallback (bool checkboxState){
    setState(() {
      isChecked = checkboxState;
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a task',
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough: null),
      ),
      trailing: TaskCheckbox(isChecked,checkboxCallback,
      ),
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