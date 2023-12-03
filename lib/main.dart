import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, // gelistirma agsama
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter kahvasi  "),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 500,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.brown[500],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('assets/Images/Kahve.jpg'),
                backgroundColor: Colors.brown,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Flutter Kahvasi ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 40.50),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.message),
                        Text("your messge here "),
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 40.50),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.phone),
                        Text("+90 555 232 222"),
                      ]),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
