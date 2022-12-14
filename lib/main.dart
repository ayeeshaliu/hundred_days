import 'package:flutter/material.dart';
import 'package:hundred_days/Change%20color.dart';
import 'package:hundred_days/styles.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),

      debugShowCheckedModeBanner: false,

      home: const changeColor(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget calcButton (String btntxt, Color ?btncolor, Color txtcolor){
    return Container(
      child: ElevatedButton(
        onPressed: (){},
        child: Text("$btntxt",
          style: TextStyle(
            fontSize: 35,
            color: txtcolor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: btncolor,
          fixedSize: Size(90, 90),
          shape: CircleBorder(),
      ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).viewInsets.vertical + 40,horizontal: MediaQuery.of(context).viewInsets.horizontal + 5 ),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 90, right: MediaQuery.of(context).viewInsets.left +10, bottom: MediaQuery.of(context).viewInsets.bottom +10),
                        child: Text("$text",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.white,
                            fontSize: 100,
                          ),
                        ),
                      ),
                    ],

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("AC", Colors.grey, Colors.black),
                      calcButton("+/-", Colors.grey, Colors.black),
                      calcButton("%", Colors.grey, Colors.black),
                      calcButton("/", Colors.amber[700], Colors.white)
                    ],
                  ),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("7", Colors.grey[850], Colors.white),
                      calcButton("8", Colors.grey[850], Colors.white),
                      calcButton("9", Colors.grey[850], Colors.white),
                      calcButton("x", Colors.amber[700], Colors.white)
                    ],
                  ),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("4", Colors.grey[850], Colors.white),
                      calcButton("5", Colors.grey[850], Colors.white),
                      calcButton("6", Colors.grey[850], Colors.white),
                      calcButton("-", Colors.amber[700], Colors.white)
                    ],
                  ),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      calcButton("1", Colors.grey[850], Colors.white),
                      calcButton("2", Colors.grey[850], Colors.white),
                      calcButton("3", Colors.grey[850], Colors.white),
                      calcButton("+", Colors.amber[700], Colors.white),
                    ],
                  ),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: (){},
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                            child: Text("0",
                              style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                              ),
                            ),

                          ),
                        style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Colors.grey[850],
                          fixedSize: Size(200, 85)
                        ),
                      ),
                      calcButton(".", Colors.grey[850], Colors.white),
                      calcButton("=", Colors.amber[700], Colors.white),
                    ],
                  ),
                  SizedBox(height: 10,),


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
  dynamic text = "0";
}



