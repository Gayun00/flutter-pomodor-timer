import 'dart:async';

import 'package:flutter/material.dart';

int timerSeconds = 3;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = timerSeconds;
  bool isRunning = false;
  int totalPomodors = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      setState(() {
        totalPomodors += 1;
        totalSeconds = timerSeconds;
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
                    child: Text('$totalSeconds',
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
