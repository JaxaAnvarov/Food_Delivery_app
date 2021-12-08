// Sherzod
import '../../components/importing_packages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    SizeConfig.init(context);
    return Scaffold(
      body: GestureDetector(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/splash_screen.png"))),
          height: _size.height,
          width: _size.width,
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const StartPage()));
        },
      ),
    );
  }
  
}