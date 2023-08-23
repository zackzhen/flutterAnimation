import 'package:flutter/material.dart';

import 'OpenAnimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: MaterialApp(
        title: 'Google',
        theme: ThemeData(
          primaryColor: Colors.blue[600],
          primarySwatch: Colors.blue,
        ),
        home: OpenAnimation(),
      ),
    );
  }
}
