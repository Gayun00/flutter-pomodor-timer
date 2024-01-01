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
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.8)))
                  ],
                )
              ],
            )
          ],
        )));
  }
}
