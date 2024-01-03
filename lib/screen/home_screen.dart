import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const twentyFiveMinutes = 3;
  int totalSeconds = twentyFiveMinutes;
  bool isRunning = false;
  int totalPomodors = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodors += 1;
        totalSeconds = twentyFiveMinutes;
        isRunning = false;
      });

      timer.cancel();
      return;
    }
    setState(() {
      totalSeconds = totalSeconds - 1;
    });
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
    setState(() {
      isRunning = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return (duration.toString().split(".").first.substring(2, 7));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(format(totalSeconds),
                        style: TextStyle(
                            color: Theme.of(context).cardColor,
                            fontSize: 89,
                            fontWeight: FontWeight.w600)))),
            Flexible(
                flex: 3,
                child: Center(
                    child: IconButton(
                        iconSize: 150,
                        color: Theme.of(context).cardColor,
                        onPressed: isRunning ? onPausePressed : onStartPressed,
                        icon: Icon(isRunning
                            ? Icons.pause_circle_outline
                            : Icons.play_circle_outline)))),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(50)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Pomodors',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28,
                                        color: Colors.black)),
                                Text('$totalPomodors',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 58,
                                        color: Colors.black)),
                              ])),
                    ),
                  ],
                ))
          ],
        ));
  }
}
