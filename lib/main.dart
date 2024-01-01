import 'package:flutter/material.dart';
import 'package:toonflix/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Scaffold(
            body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      'hi',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 48,
                          fontWeight: FontWeight.w300),
                    ),
                    Text('sdf',
                        style: TextStyle(color: Color.fromRGBO(5, 5, 5, 0.8)))
                  ],
                )
              ],
            ),
            SizedBox(height: 120),
            Text('Total balance',
                style: TextStyle(color: Color.fromRGBO(11, 11, 11, 0.8))),
            SizedBox(height: 10),
            Text('\$3 24 33',
                style: TextStyle(
                    color: Color.fromRGBO(11, 11, 11, 0.8), fontSize: 44)),
            SizedBox(height: 20),
            Row(
              children: [
                Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black),
              ],
            ),
            Row(
              children: [
                Button(
                    text: 'Transfer',
                    bgColor: Colors.amber,
                    textColor: Colors.black),
              ],
            ),
          ],
        )));
  }
}
