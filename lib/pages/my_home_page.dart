import 'package:cute_cats_app_by_rostislavovich/layout/grid_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> items = [
    Image.asset('resources/cats/1.jpg', fit: BoxFit.cover),
    Image.asset('resources/cats/2.jpg', fit: BoxFit.cover),
    Image.asset('resources/cats/3.jpg', fit: BoxFit.cover),
    Image.asset('resources/cats/4.jpg', fit: BoxFit.cover),
    Image.asset('resources/cats/5.jpg', fit: BoxFit.cover)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridWidget(items: items),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _addNewItem(
              'https://www.warrenphotographic.co.uk/photography/bigs/10113-Three-cute-kittens-white-background.jpg'),
          tooltip: 'Add',
          child: Icon(Icons.add),
        ));
  }

  void _addNewItem(String url) {
    setState(() {
      items.add(Image.network(url, fit: BoxFit.cover));
    });
  }
}
