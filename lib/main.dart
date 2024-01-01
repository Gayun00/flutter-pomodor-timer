import 'package:flutter/material.dart';

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
        home: Scaffold(
            body: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Row(
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
            const SizedBox(height: 120),
            const Text('Total balance',
                style: TextStyle(color: Color.fromRGBO(11, 11, 11, 0.8))),
            const SizedBox(height: 10),
            const Text('\$3 24 33',
                style: TextStyle(
                    color: Color.fromRGBO(11, 11, 11, 0.8), fontSize: 44)),
            const SizedBox(height: 20),
            Row(children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45)),
                  child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Text('Transfer', style: TextStyle(fontSize: 22)))),
            ])
          ],
        )));
  }
}
