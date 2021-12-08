// Sherzod
import '/components/importing_packages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String dropdownvalue = 'Age';
  // ignore: prefer_final_fields
  var _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _statusController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var _value = '1';
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _rectangularStack(_size),
            SizedBox(
              height: getHeight(5.0),
            ),
            Text(
              "Change Photo",
              style: TextStyle(
                fontSize: getFont(15.0),
                fontWeight: FontWeight.w300,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: getHeight(15.0),
            ),
            Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(30.0)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFormFields(
                            width: getWidth(147.0),
                            controller: _firstNameController,
                            hintText: 'Christopher',
                            label: 'First Name',
                          ),
                          _textFormFields(
                            width: getWidth(147.0),
                            controller: _lastNameController,
                            hintText: 'Howell',
                            label: 'Last Name',
                          )
                        ],
                      ),
                      _textFormFields(
                        controller: _userNameController,
                        hintText: 'christopherhowell',
                        label: 'Username',
                      ),
                      _textFormFields(
                        controller: _emailController,
                        hintText: 'christopherhowell@gmail.com',
                        label: 'Email',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _textFormFields(
                            width: getWidth(209.0),
                            controller: _phoneController,
                            hintText: '+1234567890',
                            label: 'Phone',
                          ),
                          _dropDownAge(),
                        ],
                      ),
                      _textFormFields(
                          controller: _statusController,
                          hintText: 'Student',
                          label: 'Status'),
                      _textFormFields(
                          controller: _passwordController,
                          hintText: '***********',
                          label: 'Password'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Change Password?",
                            style: TextStyle(
                              color: Colors.amber,
                              decoration: TextDecoration.underline,
                              fontSize: getFont(15.0),
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Chip(
                              side: BorderSide(color: Colors.grey.shade300),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(getWidth(5.0))),
                              label: Row(
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "Shipping Details",
                                    style: TextStyle(
                                        fontSize: getFont(13.0),
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              )),
                          Chip(
                              side: BorderSide(color: Colors.grey.shade300),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(getWidth(5.0))),
                              label: Row(
                                children: [
                                  const Icon(
                                    Icons.payment,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "Payment Details",
                                    style: TextStyle(
                                        fontSize: getFont(13.0),
                                        fontWeight: FontWeight.w300),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    fixedSize: Size(_size.width, getHeight(40.0))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: getWidth(20.0),
                    ),
                    Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getFont(18.0),
                          fontWeight: FontWeight.w300),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Stack _rectangularStack(Size _size) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          width: _size.width,
          height: getHeight(190.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: getHeight(147.0),
                width: _size.width,
                color: const Color(0xffFFC901),
                padding: EdgeInsets.only(
                    top: getHeight(39.0),
                    left: getWidth(21.0),
                    right: getWidth(21.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: _buttons(Icons.arrow_back),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: getWidth(120.0)),
                      child: Text(
                        "Profile Settings",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: getFont(18.0)),
                      ),
                    ),
                    _buttons(Icons.more_vert_outlined)
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
            left: (_size.width / 2 - getWidth(94.0) / 2),
            top: getHeight(96.0),
            child: Container(
              height: getHeight(94.0),
              width: getWidth(94.0),
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80")),
                  borderRadius: BorderRadius.circular(getWidth(8.0))),
            ))
      ],
    );
  }

  _buttons(icon) {
    return Container(
      height: getHeight(39.0),
      width: getWidth(39.0),
      decoration: BoxDecoration(
        color: Colors.amber.shade300,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(2, 2),
          )
        ],
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: getWidth(20.0),
      ),
    );
  }

  _textFormFields({width, controller, hintText, label}) {
    return Padding(
      padding: EdgeInsets.only(bottom: getHeight(13.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                color: const Color(0xff999999),
                fontSize: getFont(15.0),
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: getHeight(35.0),
            width: width,
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: hintText,
                  border: const OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  enabledBorder:
                      const OutlineInputBorder(borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.only(left: getWidth(10.0))),
            ),
          ),
        ],
      ),
    );
  }

  _dropDownAge() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Age",
          style: TextStyle(
              color: const Color(0xff999999),
              fontSize: getFont(15.0),
              fontWeight: FontWeight.w300),
        ),
        Container(
          height: getHeight(35.0),
          width: getWidth(82.0),
          padding: EdgeInsets.only(left: getWidth(13.0), right: getWidth(6)),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(getWidth(4.0))),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.amber,
              ),
              elevation: 0,
              dropdownColor: Colors.grey.shade200,
              hint: Text(
                _value,
              ),
              items: [
                _dropDownItem(itemValue: '1', age: '16'),
                _dropDownItem(itemValue: '2', age: '17'),
                _dropDownItem(itemValue: '3', age: '18'),
                _dropDownItem(itemValue: '4', age: '19'),
                _dropDownItem(itemValue: '5', age: '20'),
                _dropDownItem(itemValue: '6', age: '21'),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value.toString();
                });
              },
              value: _value,
            ),
          ),
        ),
      ],
    );
  }

  DropdownMenuItem<String> _dropDownItem({itemValue, age}) {
    return DropdownMenuItem(
      value: itemValue,
      child: Text(
        age,
      ),
    );
  }
}
