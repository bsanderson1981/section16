import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section16/screens/tasks_screen.dart';
//  start 201
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
