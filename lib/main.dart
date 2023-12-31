// ignore_for_file: prefer_const_constructors

import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: ((context, state) {
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
                        "${BlocProvider.of<CounterCubit>(context).counterA}",
                        style: TextStyle(fontSize: 150),
                      ),
                      MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .counterIncreament(team: 'A', buttonNumber: 1);
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
                            BlocProvider.of<CounterCubit>(context)
                                .counterIncreament(team: 'A', buttonNumber: 2);
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
                          BlocProvider.of<CounterCubit>(context)
                              .counterIncreament(team: 'A', buttonNumber: 3);
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
                        "${BlocProvider.of<CounterCubit>(context).counterB}",
                        style: TextStyle(fontSize: 150),
                      ),
                      MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .counterIncreament(team: 'B', buttonNumber: 1);
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
                            BlocProvider.of<CounterCubit>(context)
                                .counterIncreament(team: 'B', buttonNumber: 2);
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
                          BlocProvider.of<CounterCubit>(context)
                              .counterIncreament(team: 'B', buttonNumber: 3);
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
                  BlocProvider.of<CounterCubit>(context).counterReset();
                },
                color: Colors.orange,
                child: Text("Reset"),
              ),
            ],
          ),
        ),
      );
    }), listener: (context, state) {
      if (state is CounterAIncreamentState) {
      } else {}
    });
  }
}
