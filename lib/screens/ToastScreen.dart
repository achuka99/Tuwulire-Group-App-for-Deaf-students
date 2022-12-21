import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastScreen extends StatefulWidget {
  const ToastScreen({super.key});

  @override
  State<ToastScreen> createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              makeToast();
            },
            child: Center(
              child: Text(
                "MAKE A TOAST",
              ),
            ),
          ),
        ],
      ),
    );
  }

  void makeToast() {
    Fluttertoast.showToast(
      msg: "You are not registered",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
