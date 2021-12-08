//Xomdamir

import '../../components/importing_packages.dart';


class MapLocation extends StatefulWidget {
  const MapLocation({Key? key}) : super(key: key);

  @override
  _MapLocationState createState() => _MapLocationState();
}

class _MapLocationState extends State<MapLocation>
    with SingleTickerProviderStateMixin {
  List pages = [];
  List infos = [
    [
      "Find your nearby food, places and your favorite foods.",
      "Get your favorite food delivered at your door step.",
    ],
    ["Get Started", "   Next   \t        "],
  ];
  //FFF1D6
  int ind = 0;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _mapphoto(index: ind),
          _leg(index: ind),
        ],
      ),
    );
  }

//this is map and photo
  _mapphoto({int? index}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: getHeight(510.638),
      color: Colors.blue,
      child: Image.asset(
        "assets/images/img${index! + 1}.png",
        fit: BoxFit.cover,
      ),
    );
  }

//this is down
  _leg({int? index}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: getHeight(300),
      color: Colors.amber,
      child: Column(
        children: [
          SizedBox(
            height: getHeight(30.0),
          ),
          Row(
            children: [
              SizedBox(
                width: getWidth(181.0),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: ind == 0 ? Colors.white : Colors.orange,
              ),
              SizedBox(
                width: getWidth(15.0),
              ),
              CircleAvatar(
                radius: getWidth(8),
                backgroundColor: ind == 1 ? Colors.white : Colors.orange,
              )
            ],
          ),
          SizedBox(
            height: getHeight(50.0),
          ),
          SizedBox(
            width: getWidth(30.0),
          ),
          Container(
            height: getHeight(70),
            width: getWidth(250),
            child: Text(
              infos[0][index],
              style: const TextStyle(
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 18.0),
            ),
          ),
          SizedBox(
            height: getHeight(10.0),
          ),
          SizedBox(
            height: getHeight(40.0),
          ),
          Row(
            children: [
              SizedBox(
                width: getWidth(40),
              ),
              InkWell(
                  child: Container(
                    color: Colors.white,
                    height: getHeight(40.0),
                    width: getWidth(300.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: getWidth(80),
                        ),
                        Text(
                          infos[1][index],
                          style: const TextStyle(
                              color: Colors.amber, fontSize: 20),
                        ),
                        SizedBox(
                          width: getWidth(50),
                        ),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  onTap: () async {
                    setState(() {
                      ind < 1
                          ? ind = 1
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FoodBottomNarBar())); //this is NextPage
                    });
                  })
            ],
          )
        ],
      ),
    );
  }
}
