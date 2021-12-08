import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/size_config/size_config.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: appBarMethod(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              photoAndInformationAboutFoodMethod(
                "Burgers Mania",
                "Cheesy Burger",
                "4.5",
                "Fries",
                "4.2",
              ),
              photoAndInformationAboutFoodMethod(
                "Pizzeria In Restaurant",
                "Pepperoni Pizza",
                "4.5",
                "Fries",
                "4.2",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column photoAndInformationAboutFoodMethod(
    String typeOfFood,
    String nameOfFood,
    String firstRatingOfFood,
    String garnishOfFood,
    String secondRatingOfFood,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          typeOfFood,
          style: TextStyle(
            fontSize: getFont(20),
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: getHeight(10)),
          height: getHeight(197),
          width: getWidth(334),
          child: Column(
            children: [
              Container(
                width: getWidth(334),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          nameOfFood,
                          style: TextStyle(
                            fontSize: getFont(16),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: getWidth(10)),
                          width: getWidth(55),
                          child: Text(
                            "⭐️ $firstRatingOfFood",
                            style: TextStyle(
                              color: const Color(0xff737373),
                              fontSize: getFont(16),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: getWidth(50),
                      child: Text(
                        "1-Oct",
                        style: TextStyle(
                          fontSize: getFont(16),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getHeight(13)),
                height: getHeight(166),
                width: getWidth(334),
                alignment: Alignment.topRight,
                child: Container(
                  height: getHeight(82),
                  width: getWidth(82),
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: getHeight(10)),
          height: getHeight(113),
          width: getWidth(334),
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    garnishOfFood,
                    style: TextStyle(
                      fontSize: getFont(16),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: getWidth(10)),
                    width: getWidth(55),
                    child: Text(
                      "⭐️ $firstRatingOfFood",
                      style: TextStyle(
                        color: const Color(0xff737373),
                        fontSize: getFont(16),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: getWidth(50),
                child: Text(
                  "1-Oct",
                  style: TextStyle(
                    fontSize: getFont(16),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  AppBar appBarMethod() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Row(
        children: [
          InkWell(
            child: Container(
              margin: EdgeInsets.only(left: getWidth(10)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: getHeight(40),
              width: getWidth(40),
              child: SvgPicture.asset(
                'assets/icons/menu_two.svg',
                height: getHeight(17),
              ),
            ),
          ),
        ],
      ),
      title: Text(
        "My Photos",
        style: TextStyle(
            fontSize: getFont(20),
            fontWeight: FontWeight.w400,
            color: Colors.black),
      ),
      actions: [
        InkWell(
          child: Container(
            margin: EdgeInsets.only(right: getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: getHeight(40),
            width: getWidth(40),
            child: SvgPicture.asset(
              'assets/icons/option_active.svg',
              height: 17,
            ),
          ),
        ),
      ],
    );
  }
}