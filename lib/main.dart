import 'package:flutter/material.dart';
import 'package:project1/data/qoute.dart';
import 'package:project1/screens/splash.dart';
import 'package:project1/layout/typeQuoteUi.dart';
import 'package:project1/screens/save_qoute.dart';

//import 'constant/qoutesUi.dart';
import 'data/data.dart';
import 'layout/qoutesUi.dart';
import 'screens/love_qoute.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  bool isDark = false;
  Quotes? q;
  changeTheme(bool value) {
    isDark = value;
    setState(() {});
  }

  LikeQoute(Quotes q) {
    int index = data.indexOf(q);
    q.isLike = !q.isLike;
    setState(() {});
  }

  savequote(Quotes q) {
    int index = data.indexOf(q);
    q.issave = !q.issave;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
      routes: {
        'home': (context) => typesOfQuotes(changeTheme, isDark),
        'hopeQoute': (context) => hopeQuote(
              LikeQoute,
              savequote,
            ),
        'loveQoute': (context) => Loveqoute(
              fun: LikeQoute,
              fun2: savequote,
            ),
        'saveOoute': (context) => saveQuote(
              fun: LikeQoute,
              fun2: savequote,
            ),
      },
      debugShowCheckedModeBanner: false,
      home: SplashUi(changeTheme, isDark),
    );
  }
}
