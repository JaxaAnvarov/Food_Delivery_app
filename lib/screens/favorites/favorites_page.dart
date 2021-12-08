//Ibrohim

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:food_delivery_app/model/food_json.dart';
import 'package:food_delivery_app/screens/home/search_page.dart';
import '../../components/importing_packages.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              ButtonsTabBar(
                contentPadding: EdgeInsets.only(
                    right: getWidth(25.0), left: getWidth(25.0)),
                backgroundColor: ConstColors.mainColor,
                unselectedBackgroundColor: ConstColors.whiteColor,
                unselectedLabelStyle:
                    const TextStyle(color: ConstColors.textColorBlack),
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "Deals",
                  ),
                  Tab(
                    text: "Items",
                  ),
                  Tab(
                    text: "Restaurants",
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
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(250),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const CartPage()));
                  },
                  child: Container(
                    child: const Text('Open My Cart>'),
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    _dealsWidget(),
                    _itemsWidget(),
                    _restaurantsWidgets(),
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
        "My Favorites",
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

  _dealsWidget() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
            child: ListTile(
                leading: Container(
                  height: getHeight(76.0),
                  width: getWidth(70.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage('https://source.unsplash.com/random/1'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  'Buy 1 get 1 free',
                  style: TextStyle(
                      color: ConstColors.mainColor, fontSize: getFont(23)),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pizzeria Restaurant",
                      style: TextStyle(
                        fontSize: getFont(16),
                      ),
                    ),
                    Text(
                      'Chinese & Italian | \$\$',
                      style: TextStyle(
                          fontSize: getFont(6),
                          color: ConstColors.textColorBlack),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: ConstColors.mainColor,
                        ),
                        Text(
                          '(Based on 130 reviews)',
                          style: TextStyle(
                            fontSize: getFont(14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: const Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                )),
          );
        });
  }

  _itemsWidget() {
    return StreamBuilder(
        stream: _firestore.collection("json").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snap) {
          if (snap.hasData) {
            QuerySnapshot<Object?>? data = snap.data;
            getInfo(data);
            return Text("snap has data");
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  _restaurantsWidgets() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
            child: ListTile(
                leading: Container(
                  height: getHeight(76.0),
                  width: getWidth(70.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage('https://source.unsplash.com/random/20'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  'Chinese In Restaurant',
                  style: TextStyle(
                      color: ConstColors.mainColor, fontSize: getFont(23)),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pizzeria Restaurant",
                      style: TextStyle(
                        fontSize: getFont(16),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 10,
                          color: ConstColors.mainColor,
                        ),
                        Text(
                          '(Based on 130 reviews)',
                          style: TextStyle(
                            fontSize: getFont(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                )),
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

  Future<dynamic> getInfo(QuerySnapshot<Object?>? data) async {
    List<DocumentSnapshot> templist;
    List<Map<dynamic, dynamic>> maps;
    List list = [];
// CollectionReference collectionRef = Firestore.instance.collection("path");
// QuerySnapshot collectionSnapshot = await collectionRef.getDocuments();

    templist = data!.docs; // <--- ERROR

    list = templist.map((DocumentSnapshot docSnapshot) {
      return docSnapshot.data;
    }).toList();
    // ignore: unused_local_variable
    var mal = json.decode(list[1]);
    print(mal.toString());
  }
}
