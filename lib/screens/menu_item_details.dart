//Sherzod


import 'package:flutter/material.dart';
import 'package:food_delivery_app/size_config/size_config.dart';


class MenuItemDetails extends StatefulWidget {
  const MenuItemDetails({Key? key}) : super(key: key);

  @override
  State<MenuItemDetails> createState() => _MenuItemDetailsState();
}

class _MenuItemDetailsState extends State<MenuItemDetails> {
  int countSmall = 1;
  int priceSmall = 10;
  int countMedium = 1;
  int priceMedium = 15;
  int countLarge = 1;
  int priceLarge = 20;
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        leadingWidth: getWidth(58.0),
        leading:
            _appBarButton(icon: Icons.arrow_back_outlined, color: Colors.amber),
        title: Text(
          "Zinger Burger",
          style: TextStyle(
              fontSize: getFont(20.0),
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ),
        actions: [
          _actionButton(icon: Icons.favorite, color: Colors.red.shade300),
          _actionButton(icon: Icons.more_vert, color: Colors.amber),
          SizedBox(
            width: getWidth(20.0),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
                height: getHeight(229.0),
                width: _size.width,
                fit: BoxFit.cover,
                image: const NetworkImage(
                    "https://images.unsplash.com/photo-1637773509361-d1f772379021?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80")),
            ListTile(
              leading: SizedBox(
                width: getWidth(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: getWidth(19),
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                        color: const Color(0xff737373),
                        fontSize: getFont(18.0),
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              title: Text(
                "(Based on 100 reviews)",
                style: TextStyle(
                  color: const Color(0xff737373),
                  fontSize: getFont(15.0),
                  fontWeight: FontWeight.w300,
                ),
              ),
              trailing: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.black),
                    fixedSize: Size(getWidth(50.0), getHeight(20.0))),
                onPressed: () {},
                child: Text(
                  "Share",
                  style: TextStyle(
                    color: const Color(0xff110A00),
                    fontSize: getFont(12.0),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(21.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sizes",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: getFont(18.0),
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: getFont(19.0),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(height: 2.5, color: Color(0xff737373)),
                  _rowPrice(size: 'Small', price: priceSmall, id: 1),
                  const Divider(height: 2.5, color: Color(0xff737373)),
                  _rowPrice(size: 'Medium', price: priceMedium, id: 2),
                  const Divider(height: 2.5, color: Color(0xff737373)),
                  _rowPrice(size: 'Large', price: priceLarge, id: 3),
                  const Divider(height: 2.5, color: Color(0xff737373)),
                  SizedBox(height: getHeight(28.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      __plusMinusButton(
                          height: getHeight(26.0),
                          width: getWidth(88.0),
                          width2: getWidth(32.0)),
                      _addToCard(
                          color: Colors.white,
                          name: "Add to Cart",
                          size: 14.0,
                          width: getWidth(113.0),
                          height: getHeight(26.0)),
                      _addToCard(
                          color: Colors.black,
                          name: "Order Now",
                          size: 14.0,
                          width: getWidth(113.0),
                          height: getHeight(26.0)),
                    ],
                  ),
                  SizedBox(height: getHeight(22.5)),
                  Text(
                    "My Reviews",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: getFont(16.0), fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: getHeight(7.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: getHeight(51),
                        width: getWidth(51),
                        child: ClipRRect(
                            child: const Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1638292597251-6fe6b2ba50f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
                            borderRadius:
                                BorderRadius.circular(getWidth(20.0))),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star_border, color: Colors.grey),
                              SizedBox(width: getWidth(12.0)),
                              const Text("(4.0)"),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(getWidth(6.0)),
                            margin: EdgeInsets.only(top: getHeight(10.0)),
                            height: getHeight(55.8),
                            width: getWidth(268.8),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(getWidth(3.0)),
                                border: Border.all(
                                    width: getWidth(0.3),
                                    color: const Color(0xff737373))),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed eirmod tempor invidunt ut labore et.",
                              style: TextStyle(
                                  fontSize: getFont(12.0),
                                  color: const Color(0xff999999),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(getWidth(6.0)),
                            margin: EdgeInsets.only(
                                top: getHeight(16.5),
                                left: getWidth(134.4 - 24.5)),
                            height: getHeight(49.0),
                            width: getWidth(49.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(getWidth(3.0)),
                                border: Border.all(
                                    width: getWidth(0.5),
                                    color: const Color(0xff737373))),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(14.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Costumer Reviews",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: getFont(16.0),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "View All >",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: getFont(16.0),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(10.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: getHeight(51),
                        width: getWidth(51),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Randy Blouin",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: const Color(0xff737373),
                                fontSize: getFont(12.0),
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star_border, color: Colors.grey),
                              const Icon(Icons.star_border, color: Colors.grey),
                              SizedBox(
                                width: getWidth(12.0),
                              ),
                              const Text("(3.0)"),
                            ],
                          ),
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: getWidth(6.0)),
                            margin: EdgeInsets.only(top: getHeight(10.0)),
                            height: getHeight(55.8),
                            width: getWidth(268.8),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed eirmod tempor invidunt ut labore et.",
                              style: TextStyle(
                                  fontSize: getFont(12.0),
                                  color: const Color(0xff999999),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(10.0),
                  ),
                  Divider(
                    indent: getWidth(68.5),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: getHeight(51),
                        width: getWidth(51),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Michael Combs",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: const Color(0xff737373),
                                fontSize: getFont(12.0),
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star, color: Colors.amber),
                              const Icon(Icons.star_border, color: Colors.grey),
                              SizedBox(width: getWidth(12.0)),
                              const Text("(4.0)"),
                            ],
                          ),
                          Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: getWidth(6.0)),
                            margin: EdgeInsets.only(top: getHeight(10.0)),
                            height: getHeight(55.8),
                            width: getWidth(268.8),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed eirmod tempor invidunt ut labore et.",
                              style: TextStyle(
                                  fontSize: getFont(12.0),
                                  color: const Color(0xff999999),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100.0,
            )
          ],
        ),
      ),
    );
  }

  Row _rowPrice({size, price, id}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
            width: getWidth(50.0),
            child: Text(
              "$size",
              textAlign: TextAlign.left,
            )),
        SizedBox(
            width: getWidth(110.0),
            child: Text(
              "\$$price",
              textAlign: TextAlign.right,
            )),
        __plusMinusButton(
            id: id,
            price: price,
            height: getHeight(20.5),
            width: getWidth(60.5),
            width2: getWidth(26.0)),
        _addToCard(
            color: Colors.white,
            name: "Add to Cart",
            height: getHeight(20.0),
            width: getWidth(72.0),
            size: getFont(11.0)),
      ],
    );
  }

  Container _appBarButton({icon, color}) {
    return Container(
      margin: EdgeInsets.only(
          left: getWidth(21.0), top: getHeight(9.0), bottom: getHeight(9.0)),
      height: getHeight(33.0),
      width: getWidth(33.0),
      decoration: BoxDecoration(
          color: Colors.grey.shade700,
          borderRadius: BorderRadius.circular(getWidth(10.0))),
      child: Icon(
        icon,
        color: color,
        size: getWidth(22.0),
      ),
    );
  }

  Container _actionButton({icon, color}) {
    return Container(
      margin: EdgeInsets.only(
          left: getWidth(10.0), top: getHeight(9.0), bottom: getHeight(9.0)),
      height: getHeight(33.0),
      width: getWidth(37.0),
      decoration: BoxDecoration(
          color: Colors.grey.shade700,
          borderRadius: BorderRadius.circular(getWidth(10.0))),
      child: Icon(
        icon,
        color: color,
        size: getWidth(22.0),
      ),
    );
  }

  _addToCard({height, width, size, color, name}) {
    return Container(
      alignment: Alignment.center,
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(getWidth(4.0))),
      child: Text(
        name,
        style: TextStyle(
          fontSize: getFont(size),
          color: color == Colors.black ? Colors.white : Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  __plusMinusButton({height, width, width2, price, id}) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(getWidth(4.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (id == 1 && countSmall > 0) {
                      countSmall--;
                      priceSmall -= 10;
                    } else if (id == 2 && countMedium > 0) {
                      countMedium--;
                      priceMedium -= 15;
                    } else if (id == 3 && countLarge > 0) {
                      countLarge--;
                      priceLarge -= 20;
                    }
                  });
                  // print("-");
                },
                child: Container(
                  alignment: const Alignment(-0.5, 0.0),
                  height: height,
                  width: getWidth(29.0),
                  child: const Text("-"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (id == 1 && countSmall > 0) {
                      countSmall++;
                      priceSmall += 10;
                    } else if (id == 2 && countMedium > 0) {
                      countMedium++;
                      priceMedium += 15;
                    } else if (id == 3 && countLarge > 0) {
                      countLarge++;
                      priceLarge += 20;
                    }
                  });
                  // print("+");
                },
                child: Container(
                  alignment: const Alignment(0.5, 0.0),
                  height: height,
                  width: getWidth(29.0),
                  child: const Text("+"),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            left: (width - width2) / 2,
            child: Container(
                alignment: Alignment.center,
                height: height,
                width: width2,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber),
                    borderRadius: BorderRadius.circular(getWidth(4.0))),
                child: id == 1
                    ? Text(countSmall.toString())
                    : id == 2
                        ? Text(countMedium.toString())
                        : Text(countLarge.toString()))),
      ],
    );
  }
}
