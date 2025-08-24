import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body:Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, right: 30.0, left: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //test
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10),
                Text('ToDoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,

                  ),
                ),
                Text('12 Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),


              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}