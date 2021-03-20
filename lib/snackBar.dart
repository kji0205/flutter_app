import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample - Snack bar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack bar'),
          centerTitle: true,
        ),
        body: Center(
          // child: OutlinedButton(
          //   child: const Text('Show SnackBar'),
          //   onPressed: () {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(
          //         content: Text('A SnackBar has been shown.'),
          //       ),
          //     );
          //   },
          //   // style: ButtonStyle(backgroundColor: Color),
          // ),
          child: MySnackBar(),
        ));
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // child: ElevatedButton(onPressed: () {}, child: Text('I gotta pee')),
      child: ElevatedButton.icon(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'A SnackBar has been shown.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.teal,
              duration: Duration(milliseconds: 1000),
            ),
          );
        },
        label: Text('Plus One'),
        icon: Icon(Icons.plus_one),
      ),
    );
  }
}
