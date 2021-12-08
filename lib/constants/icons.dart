import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconName {
  static SvgPicture homeActive = SvgPicture.asset(
    "assets/icons/home_active.svg",
    height: 25,
    width: 18,
    fit: BoxFit.cover,
  );
  static SvgPicture home = SvgPicture.asset(
    "assets/icons/home.svg",
    height: 25,
    width: 25,
    fit: BoxFit.cover,
  );
  static SvgPicture newsActive = SvgPicture.asset(
    "assets/icons/news_active.svg",
    height: 25,
    width: 25,
  );
  static SvgPicture news = SvgPicture.asset(
    "assets/icons/news.svg",
    height: 20,
    width: 20,
  );
  static SvgPicture inboxActive = SvgPicture.asset(
    "assets/icons/message_active.svg",
    height: 25,
    width: 25,
  );
  static SvgPicture inbox = SvgPicture.asset(
    "assets/icons/message.svg",
    height: 20,
    width: 20,
  );
  static SvgPicture favoritesActive = SvgPicture.asset(
    "assets/icons/favorites_active.svg",
    height: 25,
    width: 25,
  );
  static SvgPicture favorite = SvgPicture.asset(
    "assets/icons/favorites.svg",
    height: 20,
    width: 20,
  );

  static SvgPicture profieActive = SvgPicture.asset(
    "assets/icons/profile_active.svg",
    height: 25,
    width: 25,
  );
  static SvgPicture profile = SvgPicture.asset(
    "assets/icons/profile.svg",
    width: 20,
    height: 20,
  );
  static SvgPicture menuBottm =
      SvgPicture.asset('assets/icons/option_active.svg');
  static SvgPicture backForword = SvgPicture.asset(
    "assets/icons/back_active.svg",
    height: 31,
    width: 31,
  );
  static SvgPicture menu = SvgPicture.asset(
    "assets/icons/menu_two.svg",
    fit: BoxFit.cover,
    width: 31,
    height: 31,
  );
  static SvgPicture down = SvgPicture.asset(
    "assets/icons/down.svg",
    fit: BoxFit.cover,
  );
  static SvgPicture search = SvgPicture.asset(
    "assets/icons/search.svg",
    fit: BoxFit.cover,
  );

  static SvgPicture icon1 = SvgPicture.asset('assets/icons/bir.svg',color: Colors.white,);
  static Icon icon2 = const Icon(Icons.bed, color: Colors.white);
  static SvgPicture icon3 = SvgPicture.asset('assets/icons/promotions.svg',color: Colors.white);
  static SvgPicture icon4 = SvgPicture.asset('assets/icons/following.svg',color: Colors.white);
  static Icon icon5 = const Icon(Icons.star_border, color: Colors.white);
  static Icon icon6 = const Icon(Icons.photo_camera_back, color: Colors.white);
  static SvgPicture icon7 = SvgPicture.asset('assets/icons/news.svg',color: Colors.white);
  static SvgPicture icon8 = SvgPicture.asset('assets/icons/favorites.svg',color: Colors.white);
  static SvgPicture icon9 = SvgPicture.asset('assets/icons/settings.svg',color: Colors.yellow,);
  static Icon icon10 = const Icon(
    Icons.logout_outlined,
    color: Colors.redAccent,
  );
  static SvgPicture arrow = SvgPicture.asset('assets/icons/arrow.svg');
}
