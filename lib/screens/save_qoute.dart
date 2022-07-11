import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/data/content.dart';

import '../data/data.dart';
import '../layout/qoutesWidget.dart';
import 'package:lottie/lottie.dart';

class saveQuote extends StatefulWidget {
  Function fun;
  Function fun2;
  saveQuote({
    Key? key,
    required this.fun,
    required this.fun2,
  }) : super(key: key);

  @override
  State<saveQuote> createState() => _LoveqouteState();
}

class _LoveqouteState extends State<saveQuote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            'Saved Quote',
            style: GoogleFonts.dancingScript(color: Colors.black, fontSize: 29),
          ),
        ),
        body: data.where((element) => element.issave).isEmpty
            ? Center(
                child: Lottie.network(
                    'https://assets10.lottiefiles.com/private_files/lf30_e3pteeho.json'),
              )
            : Container(
                margin: const EdgeInsets.only(top: 10),
                child: ListView.builder(
                    itemCount: data.where((element) => element.issave).length,
                    itemBuilder: (context, index) {
                      return Quotewidget(
                          data
                              .where((element) => element.issave)
                              .toList()[index],
                          widget.fun,
                          widget.fun2);
                    })));
    //   return Quotewidget(
    //       data
    //           .where((element) => element.issave)
    //           .toList()[index],
    //       widget.fun,
    //       widget.fun2);
    // })));
  }
}
