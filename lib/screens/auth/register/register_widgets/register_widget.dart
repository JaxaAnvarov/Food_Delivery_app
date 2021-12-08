import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/size_config/size_config.dart';


Positioned imagescontainerOne(BuildContext context) {
  return Positioned(
    
    bottom: 400,
    child: Container(
      height: getHeight(500),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/tepa.png'),
        ),
      ),
    ),
  );
}

Positioned imagesContainerTwo(BuildContext context) {
  return Positioned(
    top: 300,
    child: Container(
      height: getHeight(980),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('assets/images/past.png'),
        ),
      ),
    ),
  );
}

Positioned imagesContainerThree() {
  return Positioned(
    top: 130,
    child: Container(
      height: getHeight(40),
      width: getWidth(21),
      color: Colors.white,
    ),
  );
}

Positioned registerText() {
  return Positioned(
    top: getHeight(140),
    left: getWidth(30),
    child: Text(
      'Register',
      style: TextStyle(
        fontSize: getFont(40),
        color: ConstColors.whiteColor,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}
