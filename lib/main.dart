import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).viewInsets.vertical + 40,horizontal: MediaQuery.of(context).viewInsets.horizontal + 20 ),
          child: Center(
            child: Container(
              height:400,
              width: 300,
              color: Colors.grey[700],
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(0.toString()),
                    ],

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



