import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnsScreen extends StatefulWidget {
  const ColumnsScreen({super.key});

  @override
  State<ColumnsScreen> createState() => _ColumnsScreenState();
}

class _ColumnsScreenState extends State<ColumnsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Columns'),
      ),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Number #1"),
          Text("Number #2"),
          Text("Number #3"),
          Text("Number #4"),
          Text("Number #5"),
          Text("Number #6"),
          Text("Number #7"),
          Text("Number #8"),
        ],
      ),
    );
  }
}