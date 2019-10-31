import 'package:cute_cats_app_by_rostislavovich/pages/image_details_page.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({Key key, @required this.items}) : super(key: key);

  final List items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int position) {
          return InkWell(
            onTap: () => _navigation(context, items[position]),
            child: items[position],
          );
        });
  }

  void _navigation(BuildContext context, Image image) {
    Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => ImageDetailsPage(image: image)));
  }
}
