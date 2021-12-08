// Ibrohim
import 'package:food_delivery_app/screens/home/search_page.dart';

import '../../components/importing_packages.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
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
                    text: "Messages",
                  ),
                  Tab(
                    text: "Coupons",
                  ),
                  Tab(
                    text: "Promotions",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    _messageWidget(),
                    _couponsWidget(),
                    _promotionsWidgets(),
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
      leading: Container(
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
      elevation: 0,
      title: const Text(
        "Inbox",
        style: TextStyle(
            color: ConstColors.textColorBlack, fontWeight: FontWeight.bold),
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SearchPage()));
          },
          child: Container(
            margin: const EdgeInsets.all(7.0),
            height: getHeight(31.0),
            width: getWidth(40.0),
            decoration: BoxDecoration(
              color: ConstColors.greyColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(
                getHeight(7.0),
              ),
            ),
            child: IconName.search,
          ),
        ),
        Container(
            margin: const EdgeInsets.all(7.0),
            height: getHeight(31.0),
            width: getWidth(40.0),
            decoration: BoxDecoration(
              color: ConstColors.greyColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.circular(
                getHeight(7.0),
              ),
            ),
            child: IconName.menuBottm),
      ],
    );
  }

  _messageWidget() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
            child: ListTile(
              leading: Container(
                  alignment: Alignment.centerRight,
                  height: getHeight(51),
                  width: getWidth(52),
                  decoration: BoxDecoration(
                    color: ConstColors.mainColor,
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://source.unsplash.com/random/$index'),
                        fit: BoxFit.cover),
                  ),
                  child: Transform.translate(
                    offset: const Offset(-36.0, -20.0),
                    child: const CircleAvatar(
                      backgroundColor: ConstColors.mainColor,
                      child: Text(
                        '12',
                        style: TextStyle(color: Colors.white),
                      ),
                      radius: 12,
                    ),
                  )),
              title: const Text('FLutter N2'),
              subtitle: const Text("FLutter"),
              trailing: const Text('12 min ego'),
            ),
          );
        });
  }

  _couponsWidget() {
    return ListView.builder(itemBuilder: (context, index) {
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
    });
  }

  _promotionsWidgets() {
    return ListView.builder(itemBuilder: (context, index) {
      return const ListTile(
        title: Text('FLutter n2'),
        subtitle: Text("Node js"),
        trailing: Text('12 min ego'),
      );
    });
  }
}
