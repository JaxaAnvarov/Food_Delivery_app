//Yaxyo
import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/importing_packages.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: getHeight(51),
            width: cSize.width,
            padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
            color: Colors.redAccent,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: getWidth(31),
                    height: getHeight(31),
                    decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                      )
                    ]),
                    child: IconName.backForword,
                  ),
                ),
                SizedBox(
                  width: getWidth(13),
                ),
                Text(
                  "11 results found",
                  style: TextStyle(
                    fontSize: getFont(18),
                  ),
                ),
                SizedBox(
                  width: getWidth(91),
                ),
                Container(
                  width: getWidth(31),
                  height: getHeight(31),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 3),
                    )
                  ]),
                  child: IconName.search,
                ),
                SizedBox(width: getWidth(8)),
                Container(
                  width: getWidth(31),
                  height: getHeight(31),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 3),
                    )
                  ]),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getHeight(42),
            width: cSize.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                  Colors.grey.shade300,
                  Colors.grey.shade200,
                  Colors.pink.shade100
                ])),
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.transparent,
                    width: getWidth(6 * 12),
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          height: getHeight(24),
                          margin: EdgeInsets.only(top: getHeight(3)),
                          width: getWidth(6 * 12),
                          child: Text(
                            "Rating",
                            style: TextStyle(fontSize: getFont(13)),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(getWidth(34), getHeight(-31)),
                          child: CircleAvatar(
                            child: Icon(
                              Icons.cancel_outlined,
                              size: 10,
                              color: Colors.black,
                            ),
                            backgroundColor: Colors.white,
                            radius: 7,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Expanded(
            child: Container(
                width: cSize.width,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 5, left: 5),
                        child: ListTile(
                            leading: Container(
                              height: getHeight(76.0),
                              width: getWidth(70.0),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://source.unsplash.com/random/1'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              'Chinese Restaurant',
                              style: TextStyle(
                                  color: ConstColors.textColorBlack,
                                  fontSize: getFont(23)),
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
                    })),
          ),
        ],
      ),
    ));
  }
}
