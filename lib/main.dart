import 'package:flutter/material.dart';
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
      debugShowCheckedModeBanner: false,

      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).viewInsets.vertical + 40,horizontal: MediaQuery.of(context).viewInsets.horizontal + 5 ),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 90, right: MediaQuery.of(context).viewInsets.left +10, bottom: MediaQuery.of(context).viewInsets.bottom +10),
                      child: MyText(
                        title: 0.toString(),
                        size: 90,
                        fontWeight: FontWeight.w100,
                      )
                    ),
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Circles(
                      backgroundColor: Colors.grey,
                      child: MyText(
                        title: "C",
                        color: Colors.black,
                      ),
                    ),
                    Circles(
                      backgroundColor: Colors.grey,
                      child: MyText(
                        title: "+/-",
                        color: Colors.black,
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.grey,
                      child: MyText(
                        title: "%",
                        color: Colors.black,
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.orange[500],
                      child: MyText(
                        title: "/",
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "7",
                      ),
                    ),
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "8",
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "9",
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.orange[500],
                      child: MyText(
                        title: "x",
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "4",
                      ),
                    ),
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "5",
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "6",
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.orange[500],
                      child: MyText(
                        title: "-",
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "1",
                      ),
                    ),
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "2",
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "3",
                      ),
                    ),

                    Circles(
                      backgroundColor: Colors.orange[500],
                      child: MyText(
                        title: "+",
                      ),
                    ),
                  ],
                ),

                Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top + 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      //color: Colors.grey[800],
                      width: 180,
                      height: 80,
                      child: Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).viewInsets.left + 30, top: MediaQuery.of(context).viewInsets.left + 15 ),
                        child: MyText(
                          title: 0.toString(),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                            
                        ),
                      ),
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: ".",
                      ),
                    ),
                    Circles(
                      backgroundColor: Colors.grey[800],
                      child: MyText(
                        title: "=",
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}



