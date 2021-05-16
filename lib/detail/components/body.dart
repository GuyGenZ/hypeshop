import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypeshop/detail/components/title_with_icon.dart';

class Body extends StatefulWidget {
  const Body({Key key, this.name, this.price, this.imagePath, this.detail})
      : super(key: key);

  @override
  _BodyState createState() => _BodyState(name, price, imagePath, detail);

  final String name;
  final String price;
  final String imagePath;
  final String detail;
}

class _BodyState extends State<Body> {
  final String name;
  final String price;
  final String imagePath;
  final String detail;

  _BodyState(this.name, this.price, this.imagePath, this.detail);

  int count;
  @override
  void initState() {
    super.initState();
    count = 1;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                // height: 500,
                margin: EdgeInsets.only(top: size.height * .45),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -10),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(.12),
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Size:\n",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Prompt"),
                                ),
                                TextSpan(
                                  text: "XL",
                                  style: TextStyle(
                                    color: Color(0xFFCC8053),
                                    fontFamily: "Prompt",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.center,
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Color(0xffFF7777),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Text(
                        "$detail",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    // เพิ่มจำนวนสินค้า
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        top: 30,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (count > 1) {
                                  count--;
                                }
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 42,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFCC8053),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.minus,
                                size: 18,
                                color: Color(0xFFCC8053),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "$count".padLeft(2, "0"),
                            style: TextStyle(
                                color: Color(0xFFCC8053), fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 42,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFCC8053),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FaIcon(
                                FontAwesomeIcons.plus,
                                size: 18,
                                color: Color(0xFFCC8053),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // ปุ่มเพิ่มสินค้าลงตะกร้า
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: size.width / 6,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFCC8053),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.cartPlus,
                              size: 20,
                              color: Color(0xFFCC8053),
                            ),
                          ),
                          Spacer(),
                          Container(
                            alignment: Alignment.center,
                            width: size.width / 1.4,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFCC8053),
                              ),
                              color: Color(0xFFCC8053),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "ซื้อตอนนี้",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  TitleWithIcon(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "ราคา\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Prompt"),
                                  ),
                                  TextSpan(
                                    text: "$price",
                                    style: TextStyle(
                                      color: Color(0xFFCC8053),
                                      fontFamily: "Prompt",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: 180,
                              height: 220,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("$imagePath"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
