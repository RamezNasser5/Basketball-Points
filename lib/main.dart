// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int counterA = 0;
  int counterB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Points Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "$counterA",
                      style: TextStyle(fontSize: 150),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          counterA++;
                        });
                      },
                      color: Colors.orange,
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterA += 2;
                          });
                        },
                        color: Colors.orange,
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          counterA += 3;
                        });
                      },
                      color: Colors.orange,
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    width: 50,
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "$counterB",
                      style: TextStyle(fontSize: 150),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          counterB++;
                        });
                      },
                      color: Colors.orange,
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            counterB += 2;
                          });
                        },
                        color: Colors.orange,
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          counterB += 3;
                        });
                      },
                      color: Colors.orange,
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  counterB = 0;
                  counterA = 0;
                });
              },
              color: Colors.orange,
              child: Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}
