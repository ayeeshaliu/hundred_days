import 'package:flutter/material.dart';
import 'dart:math';


class changeColor extends StatefulWidget {
  const changeColor({Key? key}) : super(key: key);

  @override
  State<changeColor> createState() => _changeColorState();
}

class _changeColorState extends State<changeColor> {
  List color = [
    Colors.yellow,
    Colors.purple,
    Colors.blue,
    Colors.amber,
    Colors.red,
    Colors.black,
    Colors.green,
    Colors.teal,
    Colors.orange,
    Colors.indigo,
  ];
  Random random = Random();
  int index = 0;

  touchButton() {
    setState(() {
      index = random.nextInt(10);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color[index],
      body: Center(
        child: ElevatedButton(
          onPressed: ()=> touchButton(),
          child: Text("They told you not to but you can touch me!",
            style: TextStyle(
              fontWeight: FontWeight.w900,

            ),
          ),
          style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all(color[index]),
          ),

        ),
      ),
    );
  }
}
