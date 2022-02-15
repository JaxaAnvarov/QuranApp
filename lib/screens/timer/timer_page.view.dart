import 'package:flutter/material.dart';

class TimerViewPage extends StatelessWidget {
  const TimerViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade200,
        title: const Text('Timer Page'),
      ),
    );
  }
}
