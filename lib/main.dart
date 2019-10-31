import 'package:cute_cats_app_by_rostislavovich/pages/my_home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.deepPurple,
        // fontFamily:
      ),
      home: const MyHomePage(title: 'Sweet Fluffy Babies'),
    );
  }
}
