import 'package:flutter/material.dart';

import 'components/body.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final String detail;

  const DetailScreen(
      {Key key,
      @required this.name,
      @required this.price,
      @required this.imagePath,
      @required this.detail})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        name: name,
        price: price,
        imagePath: imagePath,
        detail: detail,
      ),
    );
  }
}
