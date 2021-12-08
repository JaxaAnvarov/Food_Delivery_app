// Sherzod
import 'package:flutter/material.dart';
import 'package:food_delivery_app/size_config/size_config.dart';
import 'package:intl/intl.dart';

class CreateCoupon extends StatefulWidget {
  const CreateCoupon({Key? key}) : super(key: key);

  @override
  State<CreateCoupon> createState() => _CreateCouponState();
}

class _CreateCouponState extends State<CreateCoupon> {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _couponController = TextEditingController();
  var _value = '1';

  DateTimeRange? dateRange;

  String getFrom() {
    if (dateRange == null) {
      return 'From';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return 'Until';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.end);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> age = [
      dropDownItem(itemValue: '1', age: '16'),
      dropDownItem(itemValue: '2', age: '17'),
      dropDownItem(itemValue: '3', age: '18'),
      dropDownItem(itemValue: '4', age: '19'),
      dropDownItem(itemValue: '5', age: '20'),
      dropDownItem(itemValue: '6', age: '21'),
    ];
    List<DropdownMenuItem<String>> category = [
      dropDownItem(itemValue: '1', age: 'Pizzas'),
      dropDownItem(itemValue: '2', age: 'Osh'),
      dropDownItem(itemValue: '3', age: 'Dimlama'),
      dropDownItem(itemValue: '4', age: 'Pizzas'),
      dropDownItem(itemValue: '5', age: 'Pizzas'),
      dropDownItem(itemValue: '6', age: 'Pizzas'),
    ];
    List<DropdownMenuItem<String>> status = [
      dropDownItem(itemValue: '1', age: 'Student'),
      dropDownItem(itemValue: '2', age: 'Employee'),
      dropDownItem(itemValue: '3', age: 'Employer'),
      dropDownItem(itemValue: '4', age: 'other'),
      dropDownItem(itemValue: '5', age: 'Pantioner'),
      dropDownItem(itemValue: '6', age: 'other'),
    ];
    // ignore: unused_local_variable
    final _size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffF6F6F6),
        elevation: 0,
        leadingWidth: getWidth(58.0),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: _appBarButton(
                icon: Icons.arrow_back_outlined, color: Colors.amber)),
        title: Text(
          "Create Coupon",
          style: TextStyle(
              fontSize: getFont(18.0),
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: getHeight(34.0), left: getWidth(136.0)),
                height: getHeight(104.0),
                width: getWidth(104.0),
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(getWidth(4.0))),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: getWidth(144.0), top: getHeight(6.0)),
                  child: Text(
                    "Attach Image",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: const Color(0xffBFBFBF),
                        fontSize: getFont(13.0),
                        fontWeight: FontWeight.w200),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(32.0), vertical: getHeight(22.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _textFormFields(
                        controller: _descriptionController,
                        label: 'Description',
                        hintText: 'For Order Over \$200'),
                    _dropDowns(
                        label: 'Category',
                        items: category,
                        width: getWidth(309.0)),
                    SizedBox(
                      height: getHeight(9.0),
                    ),
                    Row(
                      children: [
                        _dropDowns(
                            label: 'Age Range',
                            items: age,
                            width: getWidth(82.0)),
                        Padding(
                          padding: EdgeInsets.only(
                              top: getHeight(15.0),
                              left: getWidth(15.0),
                              right: getWidth(15.0)),
                          child: const Text(
                            "to",
                          ),
                        ),
                        _dropDowns(
                            label: '', items: age, width: getWidth(82.0)),
                      ],
                    ),
                    SizedBox(
                      height: getHeight(9.0),
                    ),
                    _dropDowns(
                        label: 'User Status',
                        items: status,
                        width: getWidth(309.0)),
                    SizedBox(
                      height: getHeight(9.0),
                    ),
                    _textFormFields(
                        controller: _couponController,
                        label: 'Coupon Value',
                        hintText: '\$10.00',
                        width: getWidth(134.0)),
                  ],
                ),
              ),
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
                        "Submit",
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
            ]),
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

  _dropDowns({label, items, width}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: const Color(0xff999999),
              fontSize: getFont(15.0),
              fontWeight: FontWeight.w300),
        ),
        Container(
          height: getHeight(35.0),
          width: width,
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
              items: items,
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

  DropdownMenuItem<String> dropDownItem({itemValue, age}) {
    return DropdownMenuItem(
      value: itemValue,
      child: Text(
        age,
      ),
    );
  }

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(hours: 24 * 3)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }

  Container _appBarButton({icon, color}) {
    return Container(
      margin: EdgeInsets.only(
          left: getWidth(21.0), top: getHeight(9.0), bottom: getHeight(9.0)),
      height: getHeight(33.0),
      width: getWidth(33.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(getWidth(10.0))),
      child: Icon(
        icon,
        color: color,
        size: getWidth(22.0),
      ),
    );
  }
}
