// Ramazon oka

import 'package:food_delivery_app/screens/home/search_page.dart';

import '../../components/importing_packages.dart';

class NeswFeedPage extends StatefulWidget {
  const NeswFeedPage({Key? key}) : super(key: key);

  @override
  _NeswFeedPageState createState() => _NeswFeedPageState();
}

class _NeswFeedPageState extends State<NeswFeedPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: appBarMethod(),
        body: bodyMethod(),
      ),
    );
  }

  TabBarView bodyMethod() {
    return TabBarView(
      children: [
        newsFeedPageMethod(),
        blogPageMethod(),
      ],
    );
  }

  SingleChildScrollView blogPageMethod() {
    return SingleChildScrollView(
      child: Column(
        children: [
          notificationOfBlogPageMethod(
            "Jack Gamble",
            "\n5 mins ago",
            'I just visited "Pizzeria Restaurant" today and enjoyed their services a lot it was a great experience with my family. The tastes were amazing. I would recommend visiting this with more...',
          ),
          notificationOfBlogPageMethod(
            "Eddie Courtney",
            "\n15 mins ago",
            'Lorem ipsum folor sit amet, consetuter sadipcing eltir, sed daim nonumy eirmod tempor invidunt ut labore et dolore manga aliquyam erat more...',
          ),
          notificationOfBlogPageMethod(
            "Randy Blouin",
            "\n20 mins ago",
            'Lorem ipsum folor sit amet, consetuter sadipcing eltir, sed daim nonumy eirmod tempor invidunt ut labore et dolore manga aliquyam erat more...',
          ),
        ],
      ),
    );
  }

  Container notificationOfBlogPageMethod(
    String nameOfBloger,
    String lastSeenRecently,
    String description,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      margin: EdgeInsets.only(top: getHeight(10)),
      height: getHeight(314),
      width: getWidth(375),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: getHeight(45),
                width: getWidth(45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.tealAccent,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: nameOfBloger,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getFont(18),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: lastSeenRecently,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: getFont(15),
                                color: const Color(0xffF2A902)),
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: getWidth(100)),
                    child: SvgPicture.asset(
                      "assets/icons/more-options.svg",
                      height: getHeight(20),
                      color: const Color(0xffBFBFBF),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 80, right: 40),
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: getHeight(115), left: getWidth(220)),
                  child: Text(
                    "5+",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getFont(20),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                      fontSize: getFont(15),
                      fontWeight: FontWeight.w300,
                      color: const Color(0xffBFBFBF)),
                  textAlign: TextAlign.justify,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/respect.svg",
                          height: getHeight(20),
                        ),
                        Text(
                          "1.5k",
                          style: TextStyle(
                            color: const Color(0xffFF6060),
                            fontSize: getFont(20),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/message.svg",
                          height: getHeight(20),
                        ),
                        Text(
                          "50",
                          style: TextStyle(
                            color: const Color(0xffFF6060),
                            fontSize: getFont(20),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/share.svg",
                      height: getHeight(15),
                      color: const Color(0xffF2A902),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  SingleChildScrollView newsFeedPageMethod() {
    return SingleChildScrollView(
      child: Column(
        children: [
          notificationOfNewFoodMethod(
            "New Cheesy Burgers",
            "\nBurgers Mania",
            "Hi dear customer, we have added new burgers to our list and free fries for new customers. Visit our branch and try any of these and give feedback. Thanks!",
          ),
          notificationOfNewFoodMethod(
            "20% on Pepperoni Pizza",
            "\nPizzeria Restaurant",
            "Hi dear customer, we have added new burgers to our list and free fries for new customers. Visit our branch and try any of these and give feedback. Thanks!",
          ),
          notificationOfNewFoodMethod(
            "20% on Pepperoni Pizza",
            "\nPizzeria Restaurant",
            "Hi dear customer, we have added new burgers to our list and free fries for new customers. Visit our branch and try any of these and give feedback. Thanks!",
          ),
        ],
      ),
    );
  }

  Container notificationOfNewFoodMethod(
    String nameOfNewFood,
    String nameOfRestaurant,
    String description,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      margin: EdgeInsets.only(top: getHeight(10)),
      height: getHeight(314),
      width: getWidth(375),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: getHeight(45),
                width: getWidth(45),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Colors.tealAccent,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: nameOfNewFood,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: getFont(18),
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(
                            text: nameOfRestaurant,
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: getFont(15),
                                color: const Color(0xffBFBFBF)),
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: getWidth(100)),
                    child: SvgPicture.asset(
                      "assets/icons/more-options.svg",
                      height: getHeight(20),
                      color: const Color(0xffBFBFBF),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 80, right: 40),
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: getHeight(115), left: getWidth(220)),
                  child: Text(
                    "5+",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getFont(20),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                      fontSize: getFont(15),
                      fontWeight: FontWeight.w300,
                      color: const Color(0xffBFBFBF)),
                  textAlign: TextAlign.justify,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/respect.svg",
                          height: getHeight(20),
                        ),
                        Text(
                          "5.2k",
                          style: TextStyle(
                            color: const Color(0xffFF6060),
                            fontSize: getFont(20),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/message.svg",
                          height: getHeight(20),
                        ),
                        Text(
                          "100",
                          style: TextStyle(
                            color: const Color(0xffFF6060),
                            fontSize: getFont(20),
                          ),
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      "assets/icons/share.svg",
                      height: getHeight(15),
                      color: const Color(0xffF2A902),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar appBarMethod() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: TabBar(
        labelColor: Colors.white,
        indicatorColor: Color(0xffF2A902),
        indicatorPadding: const EdgeInsets.only(left: 20, right: 20),
        unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffF2A902),
        ),
        tabs: const [
          Tab(
            text: "News Feed (20)",
          ),
          Tab(
            text: "Blogs (20)",
          ),
        ],
      ),
      leading: InkWell(
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
            height: 17,
          ),
        ),
      ),
      title: Text(
        "News & Updates",
        style: TextStyle(
            fontSize: getFont(20),
            fontWeight: FontWeight.w400,
            color: Colors.black),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SearchPage()));
              },
              child: Container(
                margin: EdgeInsets.only(right: getWidth(15)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: getHeight(40),
                width: getWidth(40),
                child: SvgPicture.asset(
                  'assets/icons/search.svg',
                  height: 17,
                ),
              ),
            ),
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
        ),
      ],
    );
  }
}
