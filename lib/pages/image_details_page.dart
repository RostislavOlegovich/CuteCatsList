import 'package:flutter/material.dart';

class ImageDetailsPage extends StatelessWidget {
  const ImageDetailsPage({Key key, @required this.image})
      : assert(image != null),
        super(key: key);

  final Image image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kittens'),
        ),
        body: Center(
          child: image,
        ));
  }
}
