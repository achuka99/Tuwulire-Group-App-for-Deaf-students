import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      appBar: AppBar(
        title: const Text('Images'),
      ),
      body: ListView(
        children:const [
         
          Image(
            image: NetworkImage('https://assets-prd.ignimgs.com/2022/10/03/wakanda-forever-poster-button-1664815714839.jpg') ,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ), Image(
            image: NetworkImage('https://assets-prd.ignimgs.com/2022/10/03/wakanda-forever-poster-button-1664815714839.jpg') ,
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}