import 'package:flutter/material.dart';
import 'package:hypeshop/detail/detail_screen.dart';
import 'package:hypeshop/home/components/custom_categories.dart';
import 'package:hypeshop/home/components/custom_title_with_avatar.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;
  ScrollController _scrollController2;
  bool x = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _scrollController = ScrollController();
    _scrollController2 = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset > 50) {
        _scrollController2.animateTo(
          _scrollController2.position.maxScrollExtent,
          duration: new Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      } else {
        _scrollController2.animateTo(
          _scrollController2.position.minScrollExtent,
          duration: new Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          controller: _scrollController2,
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitleWithAvatar(),
              //
              SizedBox(
                height: 15,
              ),
              customtitle(),
              SizedBox(
                height: 15,
              ),
              // หมวดหมู่สินค้าแบบ ListView (แนวนอน)
              CustomCategories(tabController: _tabController),
              // ส่วนแสดงสินค้า
              Container(
                height: MediaQuery.of(context).size.height - 50.0,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _productPage(context),
                    _productPage(context),
                    _productPage(context),
                    _productPage(context),
                    _productPage(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _productPage(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.0),
      width: MediaQuery.of(context).size.width - 30.0,
      height: MediaQuery.of(context).size.height - 50,
      child: GridView.count(
        controller: _scrollController,
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 0.8,
        children: <Widget>[
          _buildCard(
              'Dragon Liquid Blue Ovp 2020',
              'Dragon Liquid Blue Ovp สกรีนเต็มตัว ปี 2020 Size S-XL สินค้าลิขสิทธิ์แท้จากโรงงาน Liquid Blue 100% เข็บคู่ ไม่มีข้าง สภาพ 100%',
              '฿899.00',
              'assets/images/1111.png',
              false,
              false,
              context),
          _buildCard(
              'Kiss Japan Tour 2013',
              'เสื้อวง Kiss Japan Tour ปี 2013 เสื้อทัวร์หน้างาน Size M สินค้าลิขสิทธิ์แท้ 100% Size M อก 19.5“ ยาว 28.5” ผ้าคอตต้อน 100 เข็บคู่ ไม่มีข้าง สภาพมือสอง 90% ป้ายคอ Gildan',
              '฿1,649.00',
              'assets/images/2222.png',
              false,
              false,
              context),
          _buildCard(
              'The Moutain George W. Bush Dubya Riding Shark 2015',
              'The Moutain George W. Bush Dubya Riding Shark มัดย้อม ปี 2015 Size S อก 19.5" ยาว 26.5" ผ้าคอตต้อน 100 เข็บคู่ ไม่มีข้าง สภาพ 100% ป้ายคอ ปั้มคอ',
              '฿799.00',
              'assets/images/3333.png',
              true,
              true,
              context),
          _buildCard(
              'Avenged Sevenfold Hail To The King Tour 2014',
              'Avenged Sevenfold Hail To The King Tour ปี 2014 Size M อก 20“ ยาว 28.5” ผ้าคอตต้อน 100 เข็บคู่ ไม่มีข้าง สภาพ 100% ป้ายคอ Gildan',
              '฿949.00',
              'assets/images/4444.png',
              false,
              true,
              context),
          _buildCard(
              'Avenged Sevenfold Hail To The King Tour 2014',
              'Avenged Sevenfold Hail To The King Tour ปี 2014 Size M อก 20“ ยาว 28.5” ผ้าคอตต้อน 100 เข็บคู่ ไม่มีข้าง สภาพ 100% ป้ายคอ Gildan',
              '฿949.00',
              'assets/images/5555.png',
              false,
              true,
              context),
          _buildCard(
              'Avenged Sevenfold Hail To The King Tour 2014',
              'Avenged Sevenfold Hail To The King Tour ปี 2014 Size M อก 20“ ยาว 28.5” ผ้าคอตต้อน 100 เข็บคู่ ไม่มีข้าง สภาพ 100% ป้ายคอ Gildan',
              '฿949.00',
              'assets/images/6666.png',
              false,
              false,
              context),
          _buildCard(
              'Avenged Sevenfold Hail To The King Tour 2014',
              'Avenged Sevenfold Hail To The King Tour ปี 2014 Size M อก 20“ ยาว 28.5” ผ้าคอตต้อน 100 เข็บคู่ ไม่มีข้าง สภาพ 100% ป้ายคอ Gildan',
              '฿949.00',
              'assets/images/7777.png',
              false,
              false,
              context),
          _buildCard(
              'Avenged Sevenfold Hail To The King Tour 2014',
              'Avenged Sevenfold Hail To The King Tour ปี 2014 Size M อก 20“ ยาว 28.5” ผ้าคอตต้อน 100 เข็บคู่ ไม่มีข้าง สภาพ 100% ป้ายคอ Gildan',
              '฿949.00',
              'assets/images/8888.png',
              false,
              true,
              context),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String detail, String price, String imgPath,
      bool added, bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      name: name,
                      price: price,
                      imagePath: imgPath,
                      detail: detail,
                    ))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color:
                            isFavorite ? Color(0xffFF0000) : Color(0xffFD9A9A),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 85.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.contain),
                  ),
                ),
              ),
              SizedBox(height: 7.0),
              Text(
                price,
                style: TextStyle(color: Color(0xFFCC8053), fontSize: 16.0),
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Text('เพิ่มลงตะกร้าสินค้า',
                          style: TextStyle(
                              color: Color(0xFFD17E50), fontSize: 14.0))
                    ],
                    if (added) ...[
                      Icon(Icons.remove_circle_outline,
                          color: Color(0xFFD17E50), size: 20.0),
                      Text('3',
                          style: TextStyle(
                              color: Color(0xFFD17E50),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0)),
                      Icon(Icons.add_circle_outline,
                          color: Color(0xFFD17E50), size: 20.0),
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text customtitle() {
    return Text(
      "หมวดหมู่สินค้า",
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
