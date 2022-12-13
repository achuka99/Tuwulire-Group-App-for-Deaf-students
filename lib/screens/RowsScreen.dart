import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowsScreen extends StatelessWidget {
  const RowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const  [
          Text("1"),
          Text("2"),
          Text("3"),
          Text("4"),
          Text("5"),
        ],
      ),
    );
  }
}