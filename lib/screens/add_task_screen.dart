import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(30.0),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',
          textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.lightBlueAccent,
      ),),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              print("Pressed");
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,       // button background
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: 32,  // more left/right space
                vertical: 16,    // more top/bottom space
              ),
              //minimumSize: Size(250, 50),         // ensures button has a minimum size
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // rounded corners
              ),// text & icon color
            ),
            child: Text("Click Me"),
          )

        ],
      ),

    );
  }
}


