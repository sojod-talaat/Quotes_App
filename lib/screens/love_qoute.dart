import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
//import 'package:project1/constant/qoutesWidget.dart';

import '../data/data.dart';
import '../layout/qoutesWidget.dart';

class Loveqoute extends StatefulWidget {
  Function fun;
  Function fun2;

  Loveqoute({
    required this.fun2,
    Key? key,
    required this.fun,
  }) : super(key: key);

  @override
  State<Loveqoute> createState() => _LoveqouteState();
}

class _LoveqouteState extends State<Loveqoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'Favorite Quote',
            style: GoogleFonts.dancingScript(color: Colors.black, fontSize: 29),
          ),
        ),
        body: data.where((element) => element.isLike).isEmpty
            ? Center(
                child: Lottie.network(
                    'https://assets10.lottiefiles.com/private_files/lf30_e3pteeho.json'),
              )
            : Container(
                margin: EdgeInsets.only(top: 10),
                child: ListView.builder(
                    itemCount: data.where((element) => element.isLike).length,
                    itemBuilder: (context, index) {
                      return Quotewidget(
                          data
                              .where((element) => element.isLike)
                              .toList()[index],
                          widget.fun,
                          widget.fun2);
                    })));
    //   return Quotewidget(
    //       data
    //           .where((element) => element.isLike)
    //           .toList()[index],
    //       widget.fun,
    //       widget.fun2);
    // })));
  }
}
