import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const LearnApp());
}

class LearnApp extends StatelessWidget {
  const LearnApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Wakelock.toggle(enable: true);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
