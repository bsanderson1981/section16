/*

import 'package:flutter/material.dart';
import '/widgets/task_tile.dart';
import '/models/task.dart';

class TaskList extends StatefulWidget {

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> task = [
    Task(name: 'buy milkxxx'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        TaskTile(taskTitle: task[0].name, isChecked: task[0].isDone),
        TaskTile(taskTitle: task[1].name, isChecked: task[1].isDone),
        TaskTile(taskTitle: task[2].name, isChecked: task[2].isDone),

      ],
    );
  }
*}/


*/
import 'package:flutter/material.dart';
import '/widgets/task_tile.dart';
import '/models/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy eggs'),
    Task(name: 'buy bread'),
    Task(name: 'buy gas'),
    Task(name: 'buy oil'),
    Task(name: 'buy apples'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: tasks.length,
      itemBuilder: (context, i) {
        final t = tasks[i];
        return TaskTile(
          taskTitle: t.name,
          isChecked: t.isDone,
          onChanged: (val) => setState(() => t.isDone = val ?? false),
        );
      },
    );
  }
}
