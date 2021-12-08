//Yaxyo

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/UI/list_widget.dart';
import 'package:food_delivery_app/components/importing_packages.dart';
import 'package:food_delivery_app/main.dart';
import 'package:food_delivery_app/model/food_json.dart';
import 'package:food_delivery_app/screens/home/draver/drawer_page.dart';
import 'package:food_delivery_app/screens/home/search_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int _currentIndex;
  TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    _currentIndex = 0;
    dNames = [
      "Cart",
      "Coupons",
      "Promotions",
      "Following",
      "Reviews",
      "Photos",
      "My Feed",
      "Favorites"
    ];
    serviceNames = ["Settings", "Log Out"];
    dIcons = [
      IconName.icon1,
      IconName.icon2,
      IconName.icon3,
      IconName.icon4,
      IconName.icon5,
      IconName.icon6,
      IconName.icon7,
      IconName.icon8,
      IconName.icon9,
      IconName.icon10,
    ];
    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  late List dNames;
  late List serviceNames;
  late List dIcons;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      drawer: MyDrawer(),
      key: _key,
      body: Padding(
        padding: EdgeInsets.fromLTRB(getWidth(21), getHeight(9), 0, 0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _topBar(),
                SizedBox(height: getHeight(16)),
                SizedBox(
                    height: getHeight(41),
                    width: getWidth(334),
                    child: _textFormField()),
                SizedBox(height: getHeight(17)),
                _pageView(),
                SizedBox(height: getHeight(8)),
                _iconsList(),
                SizedBox(height: getHeight(5)),
                _mealsList(),
                SizedBox(height: getHeight(13)),
                _listBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _topBar() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _key.currentState!.openDrawer();
            setState(() {});
          },
          child: Container(
            height: getHeight(31),
            width: getWidth(31),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: .3,
                spreadRadius: .4,
              )
            ]),
            child: IconName.menu,
          ),
        ),
        SizedBox(width: getWidth(13)),
        Text(
          "Current Location",
          style: TextStyle(
            fontSize: getFont(18),
          ),
        ),
        SizedBox(
          width: getWidth(8),
        ),
        SizedBox(
          height: getHeight(8),
          width: getWidth(16),
          child: IconName.down,
        ),
      ],
    );
  }

  Widget _textFormField() {
    return TextFormField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: "Search",
        contentPadding: EdgeInsets.zero,
        filled: true,
        fillColor: ConstColors.greyColor,
        prefixIcon: Icon(CupertinoIcons.search),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: .65, color: Colors.grey),
        ),
      ),
      onFieldSubmitted: (s) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchPage()));
      },
    );
  }

  Widget _listBuilder() {
    return SizedBox(
      height: getHeight(429.8),
      width: cSize.width,
      child: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, i) {
            return MListWidget();
          }),
    );
  }

  Widget _mealsList() {
    return Container(
      height: getHeight(24),
      width: cSize.width,
      padding: EdgeInsets.only(right: getWidth(10)),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (_, i) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: getWidth(4)),
              alignment: Alignment.center,
              width: getWidth(65),
              color: Colors.yellow[200],
              child: Text(
                "Burgers",
                style: TextStyle(color: Colors.yellow[600]),
              ),
            );
          }),
    );
  }

  Widget _iconsList() {
    return Center(
      child: Container(
        width: 40,
        height: 5,
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) {
              return CircleAvatar(
                radius: 5,
                backgroundColor:
                    _currentIndex == i ? Colors.blue : Colors.redAccent,
              );
            }),
      ),
    );
  }

  Widget _pageView() {
    return SizedBox(
      height: getHeight(188),
      width: getWidth(334),
      child: PageView.builder(
          itemCount: 4,
          onPageChanged: (n) {
            _currentIndex = n;
            setState(() {});
          },
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:
                          NetworkImage("https://source.unsplash.com/random"))),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
                  child: Container(
                    height: getHeight(39),
                    width: cSize.width,
                    color: Colors.grey.withOpacity(.1),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 2.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chinese foods",
                              style: TextStyle(
                                  fontSize: getFont(14), color: Colors.white),
                            ),
                            Text(
                              "12 Restaurants",
                              style: TextStyle(
                                  fontSize: getFont(10), color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  
}
