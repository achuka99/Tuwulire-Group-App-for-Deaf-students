import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerStylingScreen extends StatefulWidget {
  const ContainerStylingScreen({super.key});

  @override
  State<ContainerStylingScreen> createState() => _ContainerStylingState();
}

class _ContainerStylingState extends State<ContainerStylingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container decoration'),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Data at Scale!",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            width: 300,
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.all(20),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(

              ),

           /*   image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/1.jpeg'),
              ),*/
            ),
          )
        ],
      ),
    );;
  }
}