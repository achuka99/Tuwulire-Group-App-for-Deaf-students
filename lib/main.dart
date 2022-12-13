// ACHUKA SIMON ALLAN
// 20/U/19779/PS
import 'package:flutter/material.dart';
import 'package:tuwulire/screens/ColumnScreen.dart';
import 'package:tuwulire/screens/ContainerScreen.dart';
import 'package:tuwulire/screens/ContainerStylingScreen.dart';
import 'package:tuwulire/screens/ImagesScreen.dart';
import 'package:tuwulire/screens/RowsScreen.dart';
import 'package:tuwulire/screens/TextStylingScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Tewulire'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Columns'),
            leading:const Icon(Icons.view_column_outlined),
            trailing:const Icon(Icons.chevron_right),
            subtitle:const Text('My columns'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ColumnsScreen(),
                ),
              );
            },
          ),
            ListTile(
            title: const Text("Rows"),
            leading:const Icon(Icons.table_rows_outlined),
            trailing:const Icon(Icons.chevron_right),
            subtitle:const Text("All about rows..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RowsScreen(),
                ),
              );
            },
          ),
             ListTile(
            title:const Text("Container"),
            leading:const Icon(Icons.check_box_outline_blank),
            trailing:const Icon(Icons.chevron_right),
            subtitle:const Text("All about container..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerScreen(),
                ),
              );
            },
          ),
          ListTile(
            title:const Text("Images"),
            leading:const Icon(Icons.photo_size_select_actual_outlined),
            trailing:const Icon(Icons.chevron_right),
            subtitle:const Text("All about images..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ImagesScreen(),
                ),
              );
            },
          ),
           ListTile(
            title:const Text("Text styling"),
            leading:const Icon(Icons.text_fields_outlined),
            trailing:const Icon(Icons.chevron_right),
            subtitle:const Text("Decorating text..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextStylingScreen(),
                ),
              );
            },
          ),
            ListTile(
            title:const Text("Container styling"),
            leading:const Icon(Icons.deblur_rounded),
            trailing:const Icon(Icons.chevron_right),
            subtitle:const Text("Decorating containers..."),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ContainerStylingScreen(),
                ),
              );
            },
          ),

        ],
        
      )
    );
  }
}
