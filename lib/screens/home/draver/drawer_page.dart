//Yaxyo

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/importing_packages.dart';
import 'package:food_delivery_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  List _funcList = [];
  @override
  void initState() {
    _funcList = [_settings, _logOut];
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

  late List dNames;

  late List serviceNames;

  late List dIcons;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return _drawer(context);
  }

  Widget _drawer(context) {
    return SafeArea(
      child: Drawer(
          child: Column(
        children: [
          SizedBox(height: getHeight(19)),
          _topDrawer(),
          SizedBox(height: getHeight(33)),
          _centerDrawer(),
          SizedBox(height: getHeight(20)),
          _bottomDrawer(context)
        ],
      )),
    );
  }

  Widget _contWidget({required int i}) {
    return Container(
      height: 23,
      width: cSize.width,
      // color: Colors.redAccent,
      margin: EdgeInsets.symmetric(vertical: getHeight(11)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                dIcons[i],
                SizedBox(width: getWidth(11)),
                Text(
                  dNames[i],
                  style: TextStyle(fontSize: getFont(15), color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            height: getHeight(18),
            width: getWidth(33),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: i <= 3 ? Colors.white : Colors.transparent,
                border: Border.all(color: Colors.white, width: 1)),
            child: Text(
              "${i * 10}",
              style: TextStyle(
                color: i <= 3 ? Colors.black : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _topDrawer() {
    return Row(
      children: [
        Container(
          width: getWidth(19),
          height: getHeight(54),
          color: Colors.yellow,
        ),
        SizedBox(width: getWidth(16)),
        SizedBox(
          width: getWidth(54),
          height: getHeight(54),
          child: Image.network(
              "https://images.unsplash.com/photo-1638299586774-673c547fdfda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
              fit: BoxFit.cover),
        ),
        SizedBox(
          height: getHeight(33.9),
        ),
        Container(
          margin: EdgeInsets.only(left: getWidth(9)),
          height: getHeight(54),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Christopher Howell",
                style: TextStyle(
                  fontSize: getFont(14),
                ),
              ),
              Text(
                "(Student)",
                style: TextStyle(
                  fontSize: getFont(12),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _centerDrawer() {
    return Container(
      height: getHeight(371),
      width: cSize.width,
      padding: EdgeInsets.fromLTRB(
          getWidth(34), getHeight(4), getWidth(30), getHeight(6)),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              end: Alignment.topLeft,
              begin: Alignment.bottomRight,
              colors: [Color(0xFFFFC901), Color(0xFFF2A902)])),
      child: ListView.builder(
          itemCount: dNames.length,
          itemBuilder: (_, i) {
            return InkWell(
                onTap: () {
                  [i];
                },
                child: _contWidget(i: i));
          }),
    );
  }

  Widget _bottomDrawer(context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(
            getWidth(34), getHeight(4), getWidth(30), getHeight(6)),
        width: cSize.width,
        child: ListView.builder(
            itemCount: serviceNames.length,
            itemBuilder: (_, i) {
              return InkWell(
                onTap: _funcList[i],
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: getHeight(11)),
                  child: Row(
                    children: [
                      dIcons[i + 8],
                      SizedBox(width: getWidth(11)),
                      Text(
                        serviceNames[i],
                        style: TextStyle(
                            fontSize: getFont(15), color: Colors.black),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  void _settings() {}
  void _logOut() {
    Navigator.pop(context);
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => AlertDialog(
              contentPadding: EdgeInsets.zero,
              content: Container(
                padding: EdgeInsets.zero,
                height: getHeight(169),
                width: getWidth(334),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pop(_);
                            },
                            child: Container(
                              height: getHeight(34),
                              width: getWidth(34),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(4)),
                              child: const Icon(Icons.cancel_presentation,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: getHeight(46),
                      width: getWidth(211),
                      child: Text(
                        "Do you want to log out from your account?",
                        style: TextStyle(fontSize: getFont(15)),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(_);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(fontSize: getFont(17)),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero)),
                          ),
                        ),
                        StatefulBuilder(
                            builder: (context, StateSetter stateSetter) {
                          return Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                isSignedIn = true;
                                stateSetter(() {});
                                //   Navigator.pushAndRemoveUntil(
                                //       _,
                                //       MaterialPageRoute(
                                //           builder: (context) => SplashScreen()),
                                //       (route) => false);
                              },
                              child: Text(
                                "Log Out",
                                style: TextStyle(fontSize: getFont(17)),
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  primary: Colors.amber,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                            ),
                          );
                        })
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}
