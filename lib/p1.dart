import 'dart:async';

import 'package:flutter/material.dart';

class Myscreen extends StatefulWidget {
  const Myscreen({Key? key}) : super(key: key);

  @override
  State<Myscreen> createState() => _MyscreenState();
}

class _MyscreenState extends State<Myscreen> {
  double i = 0;

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, 'second'),
    );
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        i = i + 1 / 5;
      });
    });
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 150,
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                backgroundColor: Colors.red.shade100,
                color: Colors.red,
                value: i,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
