import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: _tabController,
      isScrollable: true,
      indicatorColor: Colors.transparent,
      labelPadding: EdgeInsets.only(right: 45.0),
      unselectedLabelColor: Color(0xFFCDCDCD),
      labelColor: Color(0xFFC88D67),
      tabs: [
        Tab(
          child: Text(
            'ทั้งหมด',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        Tab(
          child: Text(
            'เสื้อวง METALLICA',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        Tab(
          child: Text(
            "เสื้อวง ACDC",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Tab(
          child: Text(
            "เสื้อวง IRON MAIDEN",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Tab(
          child: Text(
            "เสื้อวง SLAYER",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
