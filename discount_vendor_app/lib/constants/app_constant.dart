import 'package:flutter/material.dart';

class AppConstant {
  static const double paddingSmall = 8.00;
  static const double paddingNormal = 16.00;
  static const double paddingLarge = 24.00;

  static const String keyNotificationToken = "keyNotificationToken";

  static const Color primaryColor = Color.fromRGBO(31, 188, 219, 1);
  static const Color secondaryColor = Color.fromRGBO(207, 22, 28, 1);
  static const Color criticalColor = Color.fromRGBO(231, 30, 36, 1);
  static const Color criticalColor60 = Color.fromRGBO(207, 22, 28, 1);

  static const Color secondaryTextColor60 = Color.fromRGBO(127, 135, 147, 1);
  static const Color textFieldBorderColor = Color.fromRGBO(200, 204, 209, 1);

  static const Color neutral5 = Color.fromRGBO(249, 249, 250, 1);
  static const Color neutral10 = Color.fromRGBO(241, 242, 244, 1);
  static const Color neutral20 = Color.fromRGBO(221, 223, 227, 1);
  static const Color neutral30 = Color.fromRGBO(200, 204, 209, 1);
  static const Color neutral40 = Color.fromRGBO(165, 171, 182, 1);
  static const Color neutral50 = Color.fromRGBO(127, 135, 147, 1);
  static const Color neutral60 = Color.fromRGBO(127, 135, 147, 1);
  static const Color neutral70 = Color.fromRGBO(68, 75, 85, 1);
  static const Color neutral80 = Color.fromRGBO(34, 37, 42, 1);
  static const Color neutral90 = Color.fromRGBO(19, 21, 25, 1);

  static const Color primary5 = Color.fromRGBO(243, 250, 252, 1);
  static const Color primary40 = Color.fromRGBO(53, 188, 233, 1);
  static const Color primary50 = Color.fromRGBO(31, 188, 219, 1);
  static const Color primary60 = Color.fromRGBO(0, 153, 204, 1);

  static const Color warning05 = Color.fromRGBO(255, 249, 235, 1);
  static const Color warning50 = Color.fromRGBO(245, 184, 61, 1);
  static const Color warning60 = Color.fromRGBO(240, 158, 27, 1);
  static const Color warning80 = Color.fromRGBO(227, 146, 15, 1);
  static const Color warning90 = Color.fromRGBO(80, 52, 7, 1);

  static const Color success10 = Color.fromRGBO(214, 255, 245, 1);
  static const Color success50 = Color.fromRGBO(10, 194, 147, 1);
  static const Color success70 = Color.fromRGBO(0, 127, 96, 1);

  static const List<BoxShadow> shadow08250 = [
    BoxShadow(color: Color.fromRGBO(83, 89, 144, 0.07), offset: Offset(0, 8.0), blurRadius: 25.0, spreadRadius: 0.0),
    BoxShadow(color: Colors.white, offset: Offset(0.0, 0.0), blurRadius: 0.0, spreadRadius: 0.0)
  ];
  static const List<BoxShadow> shadow0340 = [
    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.05), offset: Offset(0, 3.0), blurRadius: 4.0, spreadRadius: 0.0),
    BoxShadow(color: Colors.white, offset: const Offset(0.0, 0.0), blurRadius: 0.0, spreadRadius: 0.0)
  ];

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      fontFamily: 'DMSans',
      textTheme: Theme.of(context).textTheme.apply(fontSizeFactor: 1, fontSizeDelta: 2.0),
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      fontFamily: 'DMSans',
      textTheme: Theme.of(context).textTheme.apply(fontSizeFactor: 1, fontSizeDelta: 2.0),
      scaffoldBackgroundColor: AppConstant.neutral90,
    );
  }
}

final navigatorKey = GlobalKey<NavigatorState>();
