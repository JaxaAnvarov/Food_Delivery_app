//Xondamir

import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/icons.dart';
import 'package:food_delivery_app/screens/accaunt/my_cart/cart_page.dart';

import 'package:food_delivery_app/size_config/size_config.dart';


class BurgerMania extends StatefulWidget {
  const BurgerMania({Key? key}) : super(key: key);

  @override
  _BurgerManiaState createState() => _BurgerManiaState();
}

class _BurgerManiaState extends State<BurgerMania> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0x99000000),
              height: getHeight(77.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: getHeight(42.0),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: getWidth(21.0),
                      ),
                      Container(
                        height: getHeight(31.0),
                        width: getWidth(31.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey),
                        child: const Icon(Icons.arrow_back_outlined,
                            color: Color(0xffffc901)),
                      ),
                      SizedBox(
                        width: getWidth(13.0),
                      ),
                      const Text("Burgers Mania",
                          style: TextStyle(
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0),
                          textAlign: TextAlign.left),
                      SizedBox(
                        width: getWidth(89.0),
                      ),
                      Container(
                          height: getHeight(31.0),
                          width: getWidth(31.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.grey),
                          child: IconName.favorite),
                      SizedBox(
                        width: getWidth(8.0),
                      ),
                      Container(
                          height: getHeight(31.0),
                          width: getWidth(31.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.grey),
                          child: IconName.menuBottm),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: getHeight(134.0),
              width: MediaQuery.of(context).size.width,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 1),
                    primary: Colors.white,
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ));
                  },
                  child: const Text(
                    "Menu & Items",
                    style: TextStyle(
                        color: Color(0xff110a00),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0),
                  )),
            ),
            SizedBox(
              height: getHeight(31.5),
            ),
            _exeption(),
            _exeption1(),
            _exeption2(),
            _exeption3(),
            _exeption4(),
          ],
        ),
      ),
    );
  }

  _exeption() {
    return Padding(
      padding: EdgeInsets.all(20.2),
      child: Column(
        children: [
          ExpansionTile(
            leading: Image.asset("assets/images/img4.png"),
            title: const Text(
              "Burgers",
              style: TextStyle(
                  color: Color(0xff110a00),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
            ),
            subtitle: const Text(
              "6 Items",
              style: TextStyle(
                  color: Color(0xfff2a902),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0),
            ),
            iconColor: Colors.amber,
            collapsedIconColor: Colors.amber,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    _inf(),
                    _inf1(),
                    _inf2(),
                    _inf4(),
                    _inf5(),
                    _inf6()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _exeption1() {
    return Padding(
      padding: EdgeInsets.all(20.2),
      child: Column(
        children: [
          ExpansionTile(
            leading: Image.asset("assets/images/img4.png"),
            title: const Text(
              "Fries & Chips",
              style: TextStyle(
                  color: Color(0xff110a00),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
            ),
            subtitle: const Text(
              "6 Items",
              style: TextStyle(
                  color: Color(0xfff2a902),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0),
            ),
            iconColor: Colors.amber,
            collapsedIconColor: Colors.amber,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    _inf(),
                    _inf1(),
                    _inf2(),
                    _inf4(),
                    _inf5(),
                    _inf6()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _exeption2() {
    return Padding(
      padding: EdgeInsets.all(20.2),
      child: Column(
        children: [
          ExpansionTile(
            leading: Image.asset("assets/images/img4.png"),
            title: const Text(
              "Chicken Pieces",
              style: TextStyle(
                  color: Color(0xff110a00),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
            ),
            subtitle: const Text(
              "6 Items",
              style: TextStyle(
                  color: Color(0xfff2a902),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0),
            ),
            iconColor: Colors.amber,
            collapsedIconColor: Colors.amber,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    _inf(),
                    _inf1(),
                    _inf2(),
                    _inf4(),
                    _inf5(),
                    _inf6()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _exeption3() {
    return Padding(
      padding: EdgeInsets.all(20.2),
      child: Column(
        children: [
          ExpansionTile(
            leading: Image.asset("assets/images/img4.png"),
            title: const Text(
              "Sodas & Drinks",
              style: TextStyle(
                  color: Color(0xff110a00),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
            ),
            subtitle: const Text(
              "10 Items",
              style: TextStyle(
                  color: Color(0xfff2a902),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0),
            ),
            iconColor: Colors.amber,
            collapsedIconColor: Colors.amber,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    _inf(),
                    _inf1(),
                    _inf2(),
                    _inf4(),
                    _inf5(),
                    _inf6()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _exeption4() {
    return Padding(
      padding: EdgeInsets.all(20.2),
      child: Column(
        children: [
          ExpansionTile(
            leading: Image.asset("assets/images/img4.png"),
            title: const Text(
              "Deserts",
              style: TextStyle(
                  color: Color(0xff110a00),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
            ),
            subtitle: const Text(
              "8 Items",
              style: TextStyle(
                  color: Color(0xfff2a902),
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 12.0),
            ),
            iconColor: Colors.amber,
            collapsedIconColor: Colors.amber,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    _inf(),
                    _inf1(),
                    _inf2(),
                    _inf4(),
                    _inf5(),
                    _inf6()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _inf() {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          size: 14,
          color: Colors.grey,
        ),
        SizedBox(
          width: getWidth(12.9),
        ),
        const Text(
          "Zinger Burger",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(65.0),
        ),
        const Text(
          "\$30-\$50",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(19.0),
        ),
        const Text(
          "Details>",
          style: TextStyle(
              color: Color(0xfff2a902),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 15.0),
        ),
      ],
    );
  }

  _inf1() {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          size: 14,
          color: Colors.red,
        ),
        SizedBox(
          width: getWidth(12.9),
        ),
        const Text(
          "Beef Burger",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(75.0),
        ),
        const Text(
          "\$40-\$60",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(19.0),
        ),
        const Text(
          "Details>",
          style: TextStyle(
              color: Color(0xfff2a902),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 15.0),
        ),
      ],
    );
  }

  _inf2() {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          size: 14,
          color: Colors.grey,
        ),
        SizedBox(
          width: getWidth(12.9),
        ),
        const Text(
          "Vegie Burger",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(95.0),
        ),
        const Text(
          "\$25",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(19.0),
        ),
        const Text(
          "Details>",
          style: TextStyle(
              color: Color(0xfff2a902),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 15.0),
        ),
      ],
    );
  }

  _inf4() {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          size: 14,
          color: Colors.grey,
        ),
        SizedBox(
          width: getWidth(12.9),
        ),
        const Text(
          "Bison Burger",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(95.0),
        ),
        const Text(
          "\$28",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(19.0),
        ),
        const Text(
          "Details>",
          style: TextStyle(
              color: Color(0xfff2a902),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 15.0),
        ),
      ],
    );
  }

  _inf5() {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          size: 14,
          color: Colors.grey,
        ),
        SizedBox(
          width: getWidth(12.9),
        ),
        const Text(
          "Black Bean Burger",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(65.0),
        ),
        const Text(
          "\$30",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(19.0),
        ),
        const Text(
          "Details>",
          style: TextStyle(
              color: Color(0xfff2a902),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 15.0),
        ),
      ],
    );
  }

  _inf6() {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          size: 14,
          color: Colors.red,
        ),
        SizedBox(
          width: getWidth(12.9),
        ),
        const Text(
          "Cheezy Burger",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(87.0),
        ),
        const Text(
          "\$40",
          style: TextStyle(
              color: Color(0xff110a00),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
        SizedBox(
          width: getWidth(19.0),
        ),
        const Text(
          "Details>",
          style: TextStyle(
              color: Color(0xfff2a902),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 15.0),
        ),
      ],
    );
  }
}
