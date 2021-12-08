//Ibrohim

import '/components/importing_packages.dart';

class MyPromotionsPage extends StatefulWidget {
  const MyPromotionsPage({Key? key}) : super(key: key);

  @override
  _MyPromotionsPageState createState() => _MyPromotionsPageState();
}

class _MyPromotionsPageState extends State<MyPromotionsPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
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
        "My Promotions",
        style: TextStyle(
            color: ConstColors.textColorBlack, fontWeight: FontWeight.bold),
      ),
      actions: [
        Container(
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

  SafeArea _body() {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            ButtonsTabBar(
              contentPadding:
                  EdgeInsets.only(right: getWidth(25.0), left: getWidth(25.0)),
              backgroundColor: ConstColors.mainColor,
              unselectedBackgroundColor: ConstColors.whiteColor,
              unselectedLabelStyle:
                  const TextStyle(color: ConstColors.textColorBlack),
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              tabs: const [
                Tab(
                  text: "Active",
                ),
                Tab(
                  text: "Expired",
                ),
                Tab(
                  text: "Drafts",
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white54, Colors.pink.shade50],
                ),
              ),
              height: getHeight(35.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  textButtonMethod("Rating"),
                  textButtonMethod("Price"),
                  textButtonMethod("Distance"),
                  textButtonMethod("Published"),
                  textButtonMethod('Restaurants'),
                  // textButtonMethod("Rating"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  _activeWidget(),
                  _expiredWidget(),
                  _draftsWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _activeWidget() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        top: getHeight(10),
                      ),
                      child: Container(
                        height: getHeight(207.0),
                        width: getWidth(375.0),
                        color: Colors.white70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getHeight(6.0),
                                    left: getWidth(21.0),
                                  ),
                                  child: Text(
                                    "20% Off Pepperoni Pizza",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ConstColors.textColorBlack,
                                      fontSize: getFont(18.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: getWidth(17), top: getHeight(7.0)),
                                  child: Text('Update>'),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: getHeight(
                                    3.0,
                                  ),
                                  left: getWidth(21.0)),
                              child: Text(
                                'Chinese & Italian | Pizzas',
                                style: TextStyle(
                                    color: ConstColors.textGreyColor,
                                    fontSize: getFont(12.0)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getWidth(21.0), top: getHeight(4.0)),
                              child: Row(
                                children: [
                                  Text(
                                    '01-10-2020 to 15-10-2020',
                                    style: TextStyle(
                                      fontSize: getFont(15.0),
                                      color: ConstColors.mainColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.0),
                                    child: Text(
                                      '(5 Days Remaining)',
                                      style: TextStyle(
                                        color: ConstColors.mainColor,
                                        fontSize: getFont(
                                          15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getHeight(13.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getWidth(21.0),
                                    ),
                                    child: Container(
                                      height: getHeight(80.0),
                                      width: getWidth(147.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          3,
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://source.unsplash.com/random/$index',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getWidth(21.0),
                                    ),
                                    child: Container(
                                      height: getHeight(80.0),
                                      width: getWidth(147.0),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut.',
                                        style: TextStyle(
                                          color: ConstColors.textgreyTextColor,
                                          fontSize: getFont(
                                            13.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getHeight(11.5),
                              ),
                              child: Center(
                                child: Container(
                                  height: getHeight(21.7),
                                  width: getWidth(333.7),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: .6,
                                          color: ConstColors.containerColor)),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: getHeight(18.0),
                                          width: getWidth(111.1),
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Likes ',
                                              style: TextStyle(
                                                  color: Colors.redAccent,
                                                  fontSize: getFont(12)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Expanded(child: VerticalDivider()),
                                      Expanded(
                                        child: SizedBox(
                                          height: getHeight(18.0),
                                          width: getWidth(111.1),
                                          child: Container(
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Comments',
                                              style: TextStyle(
                                                  color: ConstColors
                                                      .textColorBlack,
                                                  fontSize: getFont(12)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Expanded(child: VerticalDivider()),
                                      InkWell(
                                        onTap: () {},
                                        child: Expanded(
                                          child: SizedBox(
                                            height: getHeight(18.0),
                                            width: getWidth(111.1),
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Shares ',
                                                style: TextStyle(
                                                    color:
                                                        ConstColors.mainColor,
                                                    fontSize: getFont(12)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Positioned(
            top: getHeight(560),
            right: getWidth(20),
            child: SizedBox(
              height: getHeight(40),
              width: getWidth(40),
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: ConstColors.mainColor,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Container()));
                  },
                  child: const Icon(Icons.add),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _expiredWidget() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
            child: Container(
              height: 200,
              color: Colors.greenAccent,
            ),
          );
        });
  }

  _draftsWidget() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
            child: Container(
              height: 200,
              color: Colors.blue,
            ),
          );
        });
  }

  Padding textButtonMethod(context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
        top: 5,
        bottom: 5,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey.shade300,
        ),
        child: Text(
          context,
          style: TextStyle(
              fontSize: getFont(15),
              fontWeight: FontWeight.w400,
              color: ConstColors.textColorBlack),
        ),
        onPressed: () {},
      ),
    );
  }
}
