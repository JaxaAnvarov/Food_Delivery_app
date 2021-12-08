// Ibrohim
import 'package:food_delivery_app/main.dart';
import 'package:food_delivery_app/screens/auth/sign_in/sign_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/components/importing_packages.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({Key? key}) : super(key: key);

  @override
  _RegisterPagesState createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  final FirebaseAuth _authUser = FirebaseAuth.instance;
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String statusvalue = 'Status';
  String age = 'Age';
  List _regFuncs = [];
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    var cSize = MediaQuery.of(context).size;
    SizeConfig.init(context);
    _regFuncs = [_emailMethod(), _nameMethod(), _statusMethod()];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            imagescontainerOne(context),
            imagesContainerTwo(context),
            imagesContainerThree(),
            registerText(),
            Positioned(
              left: getHeight(20.0),
              top: getHeight(40.0),
              child: InkWell(
                onTap: () {
                  _count != 2
                      ? setState(() {
                          _count -= _count;
                        })
                      : Navigator.pop(context);
                },
                child: Container(
                  height: getHeight(40),
                  width: getWidth(40.0),
                  decoration: BoxDecoration(
                    color: ConstColors.whiteColor,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 1,
                        offset: Offset(0, 1),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: IconName.backForword,
                ),
              ),
            ),
            Positioned(
              left: getWidth(21.0),
              right: getWidth(21.0),
              top: getHeight(250),
              child: Container(
                decoration: BoxDecoration(
                  color: ConstColors.greyColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400.withOpacity(0.3),
                      spreadRadius: getWidth(3),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: getHeight(333.0),
                width: getWidth(getWidth(334.0)),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: getHeight(230.0),
                      width: getWidth(334.0),
                      child: _regFuncs[_count],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: getWidth(125.0),
                      ),
                      height: getHeight(25.0),
                      width: cSize.width,
                      child: _icons(),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ConstColors.mainColor,
                        fixedSize: Size(
                          getWidth(283),
                          getHeight(40.0),
                        ),
                      ),
                      onPressed: () {
                        _count != 2
                            ? setState(() {
                                _count += 1;
                              })
                            : _signUpFireStore();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(''),
                          const Text('Next'),
                          IconName.arrow,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _icons() {
    return ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.yellow,
              child: CircleAvatar(
                radius: 5,
                backgroundColor: _count == index ? Colors.white : Colors.yellow,
              ),
            ),
          );
        });
  }

  _emailMethod() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(25),
            left: getWidth(14),
            right: getWidth(17.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.name,
            controller: _userNameController,
            cursorColor: ConstColors.textColorBlack,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'User Name',
              hintStyle: const TextStyle(
                color: Color(0xffCBCBCB),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(25),
            left: getWidth(14),
            right: getWidth(17.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
            cursorColor: ConstColors.textColorBlack,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'Email',
              hintStyle: const TextStyle(
                color: Color(0xffCBCBCB),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _nameMethod() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(25),
            left: getWidth(14),
            right: getWidth(17.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.name,
            controller: _firstNameController,
            cursorColor: ConstColors.textColorBlack,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'First Name',
              hintStyle: const TextStyle(
                color: Color(0xffCBCBCB),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(25),
            left: getWidth(14),
            right: getWidth(17.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.name,
            controller: _lastNameController,
            cursorColor: ConstColors.textColorBlack,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'Last Name',
              hintStyle: const TextStyle(
                color: Color(0xffCBCBCB),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(25),
            left: getWidth(14),
            right: getWidth(17.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.name,
            controller: _passwordController,
            cursorColor: ConstColors.textColorBlack,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'Pastword',
              hintStyle: const TextStyle(
                color: Color(0xffCBCBCB),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _statusMethod() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: getHeight(25),
            left: getWidth(14),
            right: getWidth(17.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.phone,
            controller: _phoneController,
            cursorColor: ConstColors.textColorBlack,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none),
              fillColor: Colors.grey.shade200,
              filled: true,
              hintText: 'Phone',
              hintStyle: const TextStyle(
                color: Color(0xffCBCBCB),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: getWidth(14.0),
                  left: getWidth(8.0),
                  top: getHeight(25.0),
                ),
                child: DropdownButton(
                    value: statusvalue,
                    icon: IconName.down,
                    onChanged: (String? newValue) {
                      setState(() {
                        statusvalue = newValue!;
                      });
                    },
                    items: <String>['Status', 'Male', 'Famail'].map((e) {
                      return DropdownMenuItem(value: e, child: Text(e));
                    }).toList()),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: getWidth(14.0),
                  left: getWidth(8.0),
                  top: getHeight(25.0),
                ),
                child: DropdownButton(
                    dropdownColor: ConstColors.greyColor,
                    borderRadius: BorderRadius.circular(5),
                    value: age,
                    icon: IconName.down,
                    onChanged: (String? newValuee) {
                      setState(() {
                        age = newValuee!;
                      });
                    },
                    items: <String>[
                      'Age',
                      '16',
                      '17',
                      '18',
                      '19',
                      '20',
                      '21',
                      '22'
                    ].map((e) {
                      return DropdownMenuItem(value: e, child: Text(e));
                    }).toList()),
              ),
            ),
          ],
        )
      ],
    );
  }

  _signUpFireStore() async {
    await _authUser.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );
      isSignedIn = true;
      setState(() {});
    if (_authUser.currentUser != null) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => MapLocation()), (route) => false);
    }
  }
}
