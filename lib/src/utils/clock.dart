import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({
    super.key,
  });

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    final now = DateTime.now();
    final nextSecond = DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second + 1);
    final durationUntilNextSecond = nextSecond.difference(now);
    _timer = Timer(durationUntilNextSecond, startPeriodicTimer);
  }

  void startPeriodicTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('MM/dd/y (EE) | hh:mm:ss a').format(DateTime.now()),
      style: TextStyle(fontSize: 18),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
