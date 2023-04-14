import 'package:flutter/material.dart';
import 'package:voltrun/presentation/tab_recoder.dart';

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
      theme: ThemeData(appBarTheme: AppBarTheme(
        color: Colors.blue[900],
      ),floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor:Colors.blue[900] ),
        primarySwatch: Colors.blue,
      ),
      home:  TapRecorder(),
    );
  }
}
