import 'package:flutter/material.dart';
import 'package:voltrun/presentation/tab_recoder';

void main() {
  runApp(const VoltranTabRecorder());
}

class VoltranTabRecorder extends StatelessWidget {
  const VoltranTabRecorder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TapRecorder(),
    );
  }
}
