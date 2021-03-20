import 'package:flutter/material.dart';
import 'package:flutter_app/route/ScreenC.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample - Toast';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // title: _title,
      // theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/': (context)=>ScreenA(),
        '/b': (context)=>ScreenB(),
        '/c': (context)=>ScreenC(),
      },
    );
  }
}
