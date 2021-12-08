import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../components/importing_packages.dart';

bool? isSignedIn;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    isSignedIn = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      title: 'Food  Delivery',
      home: FoodBottomNarBar(),
      // home: SplashScreen();
    );
  }
}
