import '../../components/importing_packages.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0x99000000),
              height: getHeight(77.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: getHeight(42.0),
                  ),
                  _rf(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: getHeight(229.0),
            ),
            SizedBox(
              height: getHeight(28.0),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: getWidth(20.0),
                  ),
                  Container(
                    child: Image.asset("assets/images/img4.png"),
                    height: getHeight(69.0),
                    width: getWidth(69.0),
                  ),
                  SizedBox(
                    width: getWidth(15.0),
                  ),
                  Container(
                    width: getWidth(270),
                    height: getHeight(100.0),
                    child: Column(
                      children: [
                        _burgerimg(),
                        _revius(),
                        _location(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getHeight(13.5),
            ),
            Padding(
              padding:  EdgeInsets.all(getWidth(30.0)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black, width: 1),
                    primary: Colors.white,
                    minimumSize: Size(getWidth(350), getHeight(50)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                        color: Color(0xff110a00),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.normal,
                        fontSize: 19.0),
                  )),
            ),
            SizedBox(
              height: getHeight(17.5),
            ),
            Row(
              children: [
                SizedBox(
                  width: getWidth(20.0),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Images",
                      style: TextStyle(
                          color: Color(0xff110a00),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 16.0),
                    )),
                SizedBox(
                  width: getWidth(207.0),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BurgerMania(),
                          ));
                    },
                    child: const Text(
                      "View All >",
                      style: TextStyle(
                          color: Color(0xff110a00),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    ))
              ],
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: getHeight(165.0),
                  width: getWidth(170.0),
                  margin: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text("Card $index"),
                  ),
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(17.5),
            ),
            _menuitems(),
            Container(
              height: 90.0,
              color: Colors.grey.shade300,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  height: getHeight(73.0),
                  width: getWidth(73.0),
                  margin: const EdgeInsets.all(3.0),
                  child: Center(
                    child: Text("Card $index"),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: getHeight(29),
            ),
            Row(
              children: [
                SizedBox(
                  width: getWidth(20.0),
                ),
                const Text(
                  "My Reviews",
                  style: TextStyle(
                      color: Color(0xff110a00),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: getHeight(8.0),
            ),
            _icn(),
            SizedBox(
              height: getHeight(47.0),
            ),
            Row(
              children: [
                SizedBox(
                  width: getWidth(20.0),
                ),
                const Text(
                  "Customer Reviews",
                  style: TextStyle(
                      color: Color(0xff110a00),
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                ),
                SizedBox(
                  width: getWidth(127.0),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All >",
                      style: TextStyle(
                          color: Color(0xff110a00),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 13.0),
                    ))
              ],
            ),
            SizedBox(
              width: getWidth(87.0),
            ),
            Container(
              color: Colors.amber,
              height: 200.0,
              width: 300.0,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  height: getHeight(73.0),
                  width: getWidth(73.0),
                  margin: const EdgeInsets.all(3.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white,
                        height: getHeight(51.0),
                        width: getWidth(51.0),
                      ),
                      SizedBox(
                        width: getWidth(13.0),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Randy Blouin",
                            style: TextStyle(
                                color: Color(0xff737373),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0),
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: RatingBar.builder(
                              itemSize: 10,
                              initialRating: 1,
                              minRating: 0,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) {
                                print(count);
                                return Icon(
                                  Icons.star,
                                  color: Colors.red,
                                  size: 5,
                                );
                              },
                              onRatingUpdate: (rating) {},
                            ),
                          ),
                        ],
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
  }

  _rf() {
    return Row(
      children: [
        SizedBox(
          width: getWidth(21.0),
        ),
        Container(
          height: getHeight(31.0),
          width: getWidth(31.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.grey),
          child:
              const Icon(Icons.arrow_back_outlined, color: Color(0xffffc901)),
        ),
        SizedBox(
          width: getWidth(13.0),
        ),
        const Text("Burgers Mania",
            style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w500,
                fontFamily: "Poppins",
                fontStyle: FontStyle.normal,
                fontSize: 18.0),
            textAlign: TextAlign.left),
        SizedBox(
          width: getWidth(89.0),
        ),
        Container(
            height: getHeight(31.0),
            width: getWidth(31.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.grey),
            child: IconName.favorite),
        SizedBox(
          width: getWidth(8.0),
        ),
        Container(
            height: getHeight(31.0),
            width: getWidth(31.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), color: Colors.grey),
            child: IconName.menuBottm),
      ],
    );
  }

  _burgerimg() {
    return Row(
      children: [
        const Text(
          "+11-123-456-89",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: getWidth(31),
        ),
        ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Follow",
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black, width: 1),
              primary: Colors.white,
            )),
      ],
    );
  }

  _revius() {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 14,
          color: Colors.amber,
        ),
        SizedBox(
          width: 3,
        ),
        Text("4.5"),
        SizedBox(
          width: 5,
        ),
        Text(
          "(Based on 100 reviews)",
          style: TextStyle(
              color: Color(0xff737373),
              fontWeight: FontWeight.w400,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
        ),
      ],
    );
  }

  _location() {
    return Row(
      children: const [
        Icon(
          Icons.location_on_outlined,
          size: 14,
          color: Color(0xffbfbfbf),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          "1843 Spring Street, Broadlands, IL 61816",
          style: TextStyle(
              color: Color(0xffbfbfbf),
              fontWeight: FontWeight.w300,
              fontFamily: "Poppins",
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
        ),
      ],
    );
  }

  _icn() {
    return Row(
      children: [
        SizedBox(
          width: getWidth(23.0),
        ),
        Container(
          height: getHeight(50.0),
          width: getWidth(50.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.0),
            color: Colors.grey,
          ),
        ),
        SizedBox(
          width: getWidth(13.0),
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(
          width: getWidth(3),
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(
          width: getWidth(3),
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(
          width: getWidth(3),
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(
          width: getWidth(3),
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(
          width: getWidth(3),
        ),
        const Icon(
          Icons.star,
          color: Colors.grey,
          size: 20,
        ),
        SizedBox(
          width: getWidth(3),
        ),
        const Text(
          "( 4.0 )",
          style: TextStyle(fontWeight: FontWeight.w400),
        )
      ],
    );
  }

  _menuitems() {
   return Row(
      children: [
        SizedBox(
          width: getWidth(20.0),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Menu & Items",
              style: TextStyle(
                  color: Color(0xff110a00),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0),
            )),
        SizedBox(
          width: getWidth(150.0),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "View All >",
              style: TextStyle(
                  color: Color(0xff110a00),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontStyle: FontStyle.normal,
                  fontSize: 15.0),
            ))
      ],
    );
  }
}
