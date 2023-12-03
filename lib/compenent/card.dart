import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  final String text;
  const MyWidget({super.key, required this.text});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [Image.asset('assets/corbalar/corba1.jpg'), Text(('corba'))],
    ));
  }
}
