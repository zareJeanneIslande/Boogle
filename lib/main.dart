import 'package:booble/login.dart';
import 'package:flutter/material.dart';
import 'zfooterOptions.dart';
import 'zgoogleMenuOptions.dart';
import 'zgoogleSearch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      title: 'Google',
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //A Flexible widget controls how a child of a Row, Column, or Flex flexes.

            //I gave

            Flexible(
              flex: 1,
              child: GoogleMenuOptions(),
            ),
            Flexible(
              flex: 8,
              child: GoogleSearch(),
            ),
            Flexible(
              flex: 1,
              child: FooterOptions(),
            ),
          ],
        ));
  }
}
