import 'package:flutter/material.dart';

class CustomTitleWithAvatar extends StatelessWidget {
  const CustomTitleWithAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "HYPEBRANDSHOP",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20.0,
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar.jpg"),
          ),
        ],
      ),
    );
  }
}
