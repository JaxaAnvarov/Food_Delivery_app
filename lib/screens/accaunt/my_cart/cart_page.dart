//Xondamir

import '/components/importing_packages.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool _value = false;
  int countSmall = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          _contain(),
          SizedBox(
            height: getHeight(23),
          ),
          _tiles(),
        ],
      ),
    ));
  }

  _contain() {
    return Container(
      decoration: const BoxDecoration(color: Colors.amber),
      height: getHeight(85.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: getHeight(39.0),
          ),
          Row(
            children: [
              SizedBox(
                width: getWidth(21.0),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: getWidth(31.0),
                  height: getHeight(31.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.amber.shade300,
                  ),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: getWidth(13.0),
              ),
              const Text(
                "My Cart",
                style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    fontStyle: FontStyle.normal,
                    fontSize: 18.0),
              ),
              SizedBox(
                width: getWidth(189.0),
              ),
              Container(
                width: getWidth(31.0),
                height: getHeight(31.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.amber.shade300,
                ),
                child: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  _tiles() {
    return Row(
      children: [
        SizedBox(
          width: getWidth(22.0),
        ),
        Container(
            height: getHeight(225.0),
            width: getWidth(300.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          if (_value != true) {
                            _value = value!;
                          } else {
                            _value = false;
                          }
                        });
                      },
                      activeColor: Colors.yellow,
                      tristate: true,
                    ),
                    SizedBox(
                      width: getWidth(14.0),
                    ),
                    const Text(
                      "Burgers Mania",
                      style: TextStyle(
                          color: Color(0xffbfbfbf),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: 14.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(43.0),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          if (_value != true) {
                            _value = value!;
                          } else {
                            _value = false;
                          }
                        });
                      },
                      activeColor: Colors.yellow,
                      tristate: true,
                    ),
                    const SizedBox(
                      width: 13.2,
                    ),
                    Container(
                      child: Image.asset("assets/images/img4.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "  Zinger Burger",
                          style: TextStyle(
                              color: Color(0xfff2a902),
                              fontWeight: FontWeight.w300,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0),
                        ),
                        Text(
                          "   Small - \$30",
                          style: TextStyle(
                              color: Color(0xffbfbfbf),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 12.0),
                        ),
                        Text(
                          "  \$60.00",
                          style: TextStyle(
                              color: Color(0xff110a00),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 20.0),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: getWidth(7.25),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: getHeight(45.0),
                            ),
                            _plusMinusButton(),
                          ],
                        ),
                        SizedBox(
                          width: getWidth(1),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Checkbox(
                                  value: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      if (_value != true) {
                                        _value = value!;
                                      } else {
                                        _value = false;
                                      }
                                    });
                                  },
                                  activeColor: Colors.yellow,
                                  tristate: true,
                                ),
                                SizedBox(
                                  height: getHeight(45.0),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ))
      ],
    );
  }

  _plusMinusButton({height, width, width2}) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(getWidth(5.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (countSmall > 0) countSmall--;
                  });
                  print("-");
                },
                child: Container(
                  alignment: Alignment(-0.5, 0.0),
                  height: height,
                  width: getWidth(20.0),
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    countSmall++;
                  });
                  print("+");
                },
                child: Container(
                  alignment: Alignment(0.5, 0.0),
                  height: height,
                  width: getWidth(20.0),
                  child: Text("+"),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            left: getWidth(17.25),
            child: Container(
              alignment: Alignment.center,
              height: height,
              width: width2,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.amber),
                  borderRadius: BorderRadius.circular(getWidth(4.0))),
              child: Text("$countSmall"),
            )),
      ],
    );
  }
}
