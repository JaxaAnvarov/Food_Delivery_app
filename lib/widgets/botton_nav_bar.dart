import '../../components/importing_packages.dart';

class FoodBottomNarBar extends StatefulWidget {
  const FoodBottomNarBar({Key? key}) : super(key: key);

  @override
  _FoodBottomNarBarState createState() => _FoodBottomNarBarState();
}

class _FoodBottomNarBarState extends State<FoodBottomNarBar> {
  int _foodAppIndexOfIcon = 0;
  List<Widget> _listOfPage = [];
  Widget? homePage, newsPage, inboxPage, favoritePage, profilePage;
  

  @override
  void initState() {
    homePage =  HomePage();
    newsPage = const NeswFeedPage();
    inboxPage = const InboxPage();
    favoritePage = const FavoritesPage();
    profilePage = const AccountPage();
    _listOfPage = [
      homePage!,
      newsPage!,
      inboxPage!,
      favoritePage!,
      profilePage!,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listOfPage[_foodAppIndexOfIcon],
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: _foodAppIndexOfIcon == 0 ? IconName.homeActive : IconName.home,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: _foodAppIndexOfIcon == 1 ? IconName.newsActive : IconName.news,
          label: "",
        ),
        BottomNavigationBarItem(
          icon:
              _foodAppIndexOfIcon == 2 ? IconName.inboxActive : IconName.inbox,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: _foodAppIndexOfIcon == 3
              ? IconName.favoritesActive
              : IconName.favorite,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: _foodAppIndexOfIcon == 4
              ? IconName.profieActive
              : IconName.profile,
          label: "",
        ),
      ],
      type: BottomNavigationBarType.shifting,
      iconSize: 20,
      elevation: 20,
      onTap: (index) {
        setState(() {
          _foodAppIndexOfIcon = index;
        });
      },
    );
  }
}
