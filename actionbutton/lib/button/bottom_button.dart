// bottom_sheet_content.dart

import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  final Function(String) onButtonPressed;

  BottomSheetContent({required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'List of Tasks',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Press Buttons to view assigned Topics:',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              onButtonPressed('Float Action Button');
              Navigator.pop(context);
            },
            child: Text('Assignement 1'),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              onButtonPressed('Todo List');
              Navigator.pop(context);
            },
            child: Text('Assignement 2'),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              onButtonPressed('Weather App');
              Navigator.pop(context);
            },
            child: Text('Final Project'),
          ),
        ],
      ),
    );
  }
}
