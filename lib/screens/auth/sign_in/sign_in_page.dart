// ramazom oka
import 'package:food_delivery_app/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/components/importing_packages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FirebaseAuth _authUser = FirebaseAuth.instance;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _physics = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.green,
      body: SingleChildScrollView(
        physics:
            _physics ? BouncingScrollPhysics() : NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Positioned(
              top: 315,
              left: size.width / 2 - 435,
              child: Container(
                width: getWidth(865),
                height: getHeight(865),
                decoration: BoxDecoration(
                  color: const Color(0xffF2A902),
                  borderRadius: BorderRadius.circular(500),
                ),
              ),
            ),
            Positioned(
              top: getHeight(760),
              left: size.width / 2 - getWidth(435),
              child: Container(
                width: getWidth(865),
                height: getHeight(865),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(getWidth(500)),
                ),
              ),
            ),
            bodyColumnMethot()
          ],
        ),
      ),
    );
  }

  bodyColumnMethot() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(
              top: getHeight(39),
              left: getWidth(21),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 1,
                    offset: Offset(0, 1),
                    color: Colors.grey,
                  )
                ]),
            child: SvgPicture.asset('assets/icons/back_active.svg')),
        Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              margin: EdgeInsets.only(top: getHeight(36)),
              height: getHeight(40),
              width: getWidth(21),
              color: const Color(0xffF2A902)),
          Container(
              margin: EdgeInsets.only(left: getWidth(20), top: getHeight(32)),
              child: Text("SIGN IN",
                  style: TextStyle(
                    color: const Color(0xffF2A902),
                    fontSize: getFont(38),
                    fontWeight: FontWeight.w200,
                  )))
        ]),
        Container(
          margin: EdgeInsets.only(top: getHeight(68), left: 21),
          height: getHeight(348),
          width: getWidth(334),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Form(
            child: Column(
              children: [
                textFormFielfMethod("Email", usernameController),
                textFormFielfMethod("Password", passwordController),
                Container(
                  padding: EdgeInsets.only(
                    top: getHeight(23),
                    left: getWidth(183),
                  ),
                  child: textButtonMethod("Forgot Password?"),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: getWidth(25),
                    right: getWidth(26),
                    bottom: getHeight(28),
                  ),
                  height: getHeight(40),
                  width: getWidth(283),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffF2A902),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(''),
                          Text(
                            "Login",
                            style: TextStyle(fontSize: getHeight(17)),
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      ),
                      onPressed: _signInFireStore),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: getHeight(33),
          ),
          child: Text(
            "Or",
            style: TextStyle(
              fontSize: getHeight(14),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            width: getWidth(156),
            margin: EdgeInsets.only(top: getHeight(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                singInMethods("assets/icons/facebook.svg"),
                singInMethods("assets/icons/twitter.svg"),
                singInMethods("assets/icons/google.svg"),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => RegisterPages()));
          },
          child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: getHeight(82),
              ),
              child: const Text('Create new account')),
        ),
      ],
    );
  }

  TextButton textButtonMethod(context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.black,
      ),
      child: Text(
        context,
        style: TextStyle(
          fontSize: getHeight(14),
          fontWeight: FontWeight.w400,
        ),
      ),
      onPressed: () {},
    );
  }

  Container textFormFielfMethod(
      String context, TextEditingController controller) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      padding: const EdgeInsets.only(left: 20, right: 27),
      child: TextFormField(
        onTap: () {
          setState(() {
            _physics = true;
          });
        },
        onFieldSubmitted: (s) {
          setState(() {
            _physics = false;
          });
        },
        controller: controller,
        cursorColor: const Color(0xffF6F6F6),
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          fillColor: const Color(0xffF6F6F6),
          filled: true,
          hintText: context,
          hintStyle: const TextStyle(
            color: Color(0xffCBCBCB),
          ),
        ),
      ),
    );
  }

  SizedBox singInMethods(context) {
    return SizedBox(
      height: getHeight(42),
      width: getWidth(42),
      child: SvgPicture.asset(
        context,
        fit: BoxFit.cover,
      ),
    );
  }

  _signInFireStore() async {
    await _authUser.signInWithEmailAndPassword(
      email: usernameController.text,
      password: passwordController.text,
    );

    

    if (_authUser.currentUser != null) {
    isSignedIn = true;
    setState(() {});
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => FoodBottomNarBar()),
          (route) => false);
    }
  }
}
