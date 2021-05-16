import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleWithIcon extends StatelessWidget {
  const TitleWithIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.chevronLeft,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          "รายละเอียด",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.0,
          ),
        ),
        Spacer(),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.shoppingCart,
            size: 20,
          ),
          onPressed: () => null,
        ),
      ],
    );
  }
}
