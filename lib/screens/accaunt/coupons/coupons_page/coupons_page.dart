//Ibrohim
import 'package:food_delivery_app/screens/accaunt/coupons/create_coupons/create_coupon.dart';

import '/components/importing_packages.dart';

class CouponsPage extends StatefulWidget {
  const CouponsPage({Key? key}) : super(key: key);

  @override
  _CouponsPageState createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                contentPadding: EdgeInsets.only(
                    right: getWidth(20.0), left: getWidth(20.0)),
                backgroundColor: ConstColors.mainColor,
                unselectedBackgroundColor: ConstColors.whiteColor,
                unselectedLabelStyle:
                    const TextStyle(color: ConstColors.textColorBlack),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "Coupons",
                  ),
                  Tab(
                    text: "User",
                  ),
                  Tab(
                    text: "Expired",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    _activeWidget(),
                    _userWidget(),
                    _exporedWidgets(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: ConstColors.whiteColor,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          height: getHeight(31.0),
          width: getWidth(40.0),
          decoration: BoxDecoration(
            color: ConstColors.greyColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(
              getHeight(7.0),
            ),
          ),
          child: IconName.backForword,
        ),
      ),
      elevation: 0,
      title: const Text(
        "Coupons",
        style: TextStyle(
            color: ConstColors.textColorBlack, fontWeight: FontWeight.bold),
      ),
    );
  }

  _activeWidget() {
    return Stack(
      children: [
        Positioned(
          child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: getHeight(80),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/images.png"),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: getWidth(40),
                          top: getHeight(10.0),
                          bottom: getHeight(10),
                          // bottom: getHeight(10.0),
                        ),
                        height: getHeight(50.0),
                        width: getWidth(50.0),
                        decoration: const BoxDecoration(color: Colors.red),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getWidth(10.0),
                              top: getHeight(
                                11.0,
                              ),
                            ),
                            child: Text(
                              "chinese in Restaurants",
                              style: TextStyle(
                                fontSize: getFont(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getWidth(10),
                            ),
                            child: Text(
                              "\$20.-00",
                              style: TextStyle(
                                color: ConstColors.mainColor,
                                fontSize: getFont(25.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getWidth(10),
                            ),
                            child: Text(
                              "for order over \$ 100",
                              style: TextStyle(fontSize: getFont(15.0)),
                            ),
                          ),
                        ],
                      ),
                      const Expanded(
                          child: VerticalDivider(
                        color: ConstColors.mainColor,
                      )),
                      Padding(
                        padding: EdgeInsets.only(right: getWidth(35.0)),
                        child: const SizedBox(
                          child: Text(
                            'Oct 20 \nOct 25',
                            style: TextStyle(
                              color: ConstColors.textColorBlack,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            );
          }),
        ),
        Positioned(
          top: getHeight(600),
          right: getWidth(20),
          child: SizedBox(
            height: getHeight(40),
            width: getWidth(40),
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: ConstColors.mainColor,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CreateCoupon()));
                },
                child: const Icon(Icons.add),
              ),
            ),
          ),
        )
      ],
    );
  }

  _userWidget() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 30,
              ),
              title: Text('User'),
              subtitle: Text("FLutter n2"),
              trailing: Text('12 min ego'),
            ),
          );
        });
  }

  _exporedWidgets() {
    return Container();
  }
}
