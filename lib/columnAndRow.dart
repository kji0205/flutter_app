/*
* 참고 학습 사이트 링크
* https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
* */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample - Toast';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner: false,
        title: _title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
          child: Column(
        // verticalDirection: VerticalDirection.down,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.white,
            child: Text('Container 1'),
          ),
          SizedBox(
            width: 30.0,
            // height: 30.0,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Text('Container 2'),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text('Container 3'),
          ),
          // invisible container
          Container(
            width: double.infinity,
            // height: 20,
            // color: Colors.red,
            // child: Text('Container 3'),
          ),
        ],
      )),
    );
  }
}
