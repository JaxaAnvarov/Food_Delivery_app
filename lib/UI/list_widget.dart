import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/importing_packages.dart';

class MListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Promotions",
                style: TextStyle(fontSize: getFont(16)),
              ),
              TextButton.icon(
                  onPressed: () {},
                  label: Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                    color: Colors.black,
                  ),
                  icon: Text(
                    "View all",
                    style:
                        TextStyle(fontSize: getFont(13), color: Colors.black),
                  ))
            ],
          ),
        ),
        SizedBox(height: getHeight(14)),
        SizedBox(
          width: cSize.width,
          height: getHeight(220),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (_, i) {
                return Container(
                  width: getWidth(190),
                  color: Colors.blueAccent,
                  margin: EdgeInsets.symmetric(horizontal: 9),
                  child: Column(
                    children: [
                      Container(
                        height: getHeight(26),
                        alignment: Alignment.center,
                        color: Colors.red,
                        child: Center(
                          child: Text(
                            "Flat 50% Off",
                            style: TextStyle(
                                fontSize: getFont(13), color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: getHeight(127),
                        width: getWidth(190),
                        child: Image.network(
                            "https://source.unsplash.com/random",
                            fit: BoxFit.cover),
                      ),
                      Container(
                        height: getHeight(67),
                        width: getWidth(190),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pizzeria Restaurant",
                              style: TextStyle(
                                fontSize: getFont(14),
                              ),
                            ),
                            Text(
                              "Chinese & Italian",
                              style: TextStyle(
                                  fontSize: getFont(11),
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: getHeight(10)),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    size: 14, color: Colors.yellow),
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                      fontSize: getFont(13),
                                      color: Colors.grey[400]),
                                ),
                                SizedBox(
                                  width: getWidth(5),
                                ),
                                Text(
                                  "(Based on 100 reviews)",
                                  style: TextStyle(
                                      color: Colors.grey[300],
                                      fontSize: getFont(9)),
                                ),
                                SizedBox(
                                  width: getWidth(12),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.red,
                                    child: Icon(
                                      Icons.favorite,
                                      size: 9,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
