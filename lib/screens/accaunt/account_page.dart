// Sherzod
import 'package:food_delivery_app/screens/accaunt/coupons/coupons_page/coupons_page.dart';
import 'package:food_delivery_app/screens/accaunt/my_photos.dart';
import 'package:food_delivery_app/screens/accaunt/promotions/promotions/promotions_page.dart';

import '../../components/importing_packages.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  var top = 0.0;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {});
    });
    // ignore: prefer_typing_uninitialized_variables, unused_local_variable
    var flexSize;
    // ignore: unused_local_variable
    final _size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: Stack(
        children: [
          CustomScrollView(
            scrollDirection: Axis.vertical,
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                expandedHeight: getHeight(250.0),
                actions: [_moreVerticalButton()],
                flexibleSpace: LayoutBuilder(
                  builder: (ctx, cons) {
                    top = cons.biggest.height;

                    return FlexibleSpaceBar(
                        centerTitle: true,
                        title: AnimatedOpacity(
                          opacity: top < getHeight(170.0) ? 0.0 : 1.0,
                          duration: const Duration(milliseconds: 200),
                          child: _flexibleSpaceBarChild(),
                        ));
                  },
                ),
                backgroundColor: const Color(0xffF6F6F6),
                elevation: 0,
                title: Text(
                  "My Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getFont(18.0),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                leadingWidth: getWidth(74.0),
                leading: _backButton(),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: getWidth(20.0)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryPage()));},
                                child: _gridItem(
                                  Icons.photo_outlined, "Photos", "(120)"),
                              ),GestureDetector(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyPromotionsPage()));},
                                child: _gridItem(
                                  Icons.photo_outlined, "Promotions", "(16)"),
                              ),
                              
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              _gridItem(
                                  Icons.star_outlined, "Reviews", "(42)"),
                                  GestureDetector(
                                onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => CouponsPage()));},
                                child: _gridItem(Icons.card_giftcard_rounded, "Coupons",
                                  "(10)"),
                              ),
                              
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              _gridItem(Icons.people_alt_outlined, "Following",
                                  "(280)"),
                                   GestureDetector(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));},
                                child: _gridItem(Icons.shopping_basket_outlined, "Cart",

                                  "(100)"),
                              ),
                              
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(30.0),
                    ),
                  ],
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: getHeight(20.0),
                      ),
                      _card(Icons.settings_sharp, "General Settings"),
                      _card(Icons.settings_sharp, "Profile Settings"),
                      _card(Icons.navigation_outlined, "Shipping Details"),
                      _card(Icons.payment, "Payment Details"),
                      SizedBox(
                        height: getHeight(90.0),
                      ),
                    ],
                  ),
                ),
              ]))
            ],
          ),
          _anotherOne(),
          // _accountAvatar(),
        ],
      ),
    );
  }

  _gridItem(icon1, title1, count1) {
    return Container(
      color: const Color(0xffF2A902),
      width: (MediaQuery.of(context).size.width - getWidth(42)) / 3,
      height: getHeight(82.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon1,
            size: getWidth(23.0),
            color: Colors.white,
          ),
          Text(
            title1,
            style: TextStyle(
              color: Colors.black,
              fontSize: getFont(13.0),
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            count1,
            style: TextStyle(
              color: Colors.white,
              fontSize: getFont(12.0),
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  // _gridItem(icon1, icon2, title1, title2, count1, count2) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Container(
  //         color: const Color(0xffF2A902),
  //         width: (MediaQuery.of(context).size.width - getWidth(42)) / 3,
  //         height: getHeight(82.0),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Icon(
  //               icon1,
  //               size: getWidth(23.0),
  //               color: Colors.white,
  //             ),
  //             Text(
  //               title1,
  //               style: TextStyle(
  //                 color: Colors.black,
  //                 fontSize: getFont(13.0),
  //                 fontWeight: FontWeight.w400,
  //               ),
  //             ),
  //             Text(
  //               count1,
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: getFont(12.0),
  //                 fontWeight: FontWeight.w300,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       Container(
  //         color: const Color(0xffF2A902),
  //         margin: EdgeInsets.symmetric(vertical: getWidth(0.8)),
  //         height: getHeight(82.0),
  //         width: (MediaQuery.of(context).size.width - getWidth(42)) / 3,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Icon(
  //               icon2,
  //               size: getWidth(23.0),
  //               color: Colors.white,
  //             ),
  //             Text(
  //               title2,
  //               style: TextStyle(
  //                 color: Colors.black,
  //                 fontSize: getFont(13.0),
  //                 fontWeight: FontWeight.w400,
  //               ),
  //             ),
  //             Text(
  //               count2,
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: getFont(12.0),
  //                 fontWeight: FontWeight.w300,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Row _flexibleSpaceBarChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: getHeight(120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: getHeight(60.0),
                width: getWidth(60.0),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1543191219-c3600e20649e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                    ),
                    borderRadius: BorderRadius.circular(getWidth(7.0))),
              ),
              const SizedBox(height: 7.0),
              Text(
                "Christopher Howell",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getFont(16.0),
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff110A00),
                ),
              ),
              Text(
                "(Student)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getFont(14.0),
                  fontWeight: FontWeight.w300,
                  color: const Color(0xffF2A902),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _card(
    leading,
    title,
  ) {
    return Container(
      height: getHeight(64.0),
      width: getWidth(334.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: getWidth(0.4)),
          borderRadius: BorderRadius.circular(getWidth(8.0))),
      margin: EdgeInsets.symmetric(
          horizontal: getWidth(20.0), vertical: getHeight(6.0)),
      child: ListTile(
        onTap: title == "Profile Settings"
            ? () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              }
            : () {},
        leading: Icon(
          leading,
          color: const Color(0xffF2A902),
          size: getWidth(22.0),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: const Color(0xff110A00),
            fontWeight: FontWeight.w300,
            fontSize: getFont(15.0),
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: const Color(0xffF2A902),
          size: getWidth(16.0),
        ),
      ),
    );
  }

  _anotherOne() {
    return Visibility(
      visible: top > getHeight(160.0) ? false : true, //Default is true,
      child: Container(
        margin: EdgeInsets.only(left: getWidth(244.0), top: getHeight(40.0)),
        height: getHeight(46.0),
        width: getWidth(46.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: const Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1543191219-c3600e20649e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
          ),
        ),
      ),
      //maintainSize: bool. When true this is equivalent to invisible;
      //replacement: Widget. Defaults to Sizedbox.shrink, 0x0
    );
  }

  Container _moreVerticalButton() {
    return Container(
      margin: EdgeInsets.only(
          left: getWidth(6.0),
          top: getHeight(8.0),
          bottom: getHeight(8.0),
          right: getWidth(20.0)),
      height: getHeight(50.0),
      width: getWidth(50.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          primary: Colors.white,
        ),
        onPressed: () {},
        child: Icon(
          Icons.more_vert_outlined,
          color: Colors.amber,
          size: getWidth(23.0),
        ),
      ),
    );
  }

  Padding _backButton() {
    return Padding(
      padding: EdgeInsets.only(
          top: getHeight(8.0), bottom: getHeight(8.0), left: getWidth(22.0)),
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(
          Icons.arrow_back,
          color: Colors.amber,
          size: getWidth(23.0),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          primary: Colors.white,
        ),
      ),
    );
  }
}
