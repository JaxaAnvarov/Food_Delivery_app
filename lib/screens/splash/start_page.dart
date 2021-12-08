// Sherzod
//
import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/auth/sign_in/sign_in_page.dart';
import 'package:food_delivery_app/size_config/size_config.dart';


class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      body: Container(
        alignment: const Alignment(0.0, 0.97),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/start_screen.png"))),
        height: _size.height,
        width: _size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            elevation: 0,
            fixedSize: Size(getWidth(309.0), getHeight(40.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: getWidth(10.0),
              ),
              Text(
                "Don't Wait,Get started",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w300,
                  fontSize: getFont(17.0),
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.amber,
                size: getWidth(21.0),
              ),
            ],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInPage()));
          },
        ),
      ),
    );
  }
}
