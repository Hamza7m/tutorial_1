// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tutorial_1/compenent/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int corba = 1;
  int yemek = 1;
  int tatli = 1;
  List<String> corbalar = ["corba1", "corba2", "corba3", "corba4", "corba5"];
  List<String> yemekler = ["yemek1", "yemek2", "yemek3", "yemek4", "yemek5"];
  List<String> tatliler = ["tatli1", "tatli2", "tatli3", "tatli4", "tatli5"];
  @override
  void yenileme() {
    setState(() {
      corba = Random().nextInt(5) + 1;
      yemek = Random().nextInt(5) + 1;
      tatli = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Menue',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Yemek menuesi '),
              backgroundColor: Colors.indigo,
            ),
            body: Column(children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: yenileme,
                    child: Image.asset('assets/corbalar/corba${corba}.jpg')),
              ),
              Text(corbalar[corba-1]),
              Divider(),
              Expanded(
                child: ElevatedButton(
                    onPressed: yenileme,
                    child: Image.asset('assets/yemekler/yamek${yemek}.jpg')),
              ),
              Text(yemekler[yemek-1]),
              Divider(),
              Expanded(
                child: ElevatedButton(
                    onPressed: yenileme,
                    child: Image.asset('assets/tatliler/tatli${tatli}.jpg')),
              ),
              Text(tatliler[tatli - 1]),
              Divider(),
            ])));
  }
}
