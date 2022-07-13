import 'package:flutter/material.dart';
import 'package:project1/layout/typeQuoteUi.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashUi extends StatefulWidget {
  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacementNamed('home');
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                //height: 850,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(3),
                    bottomRight: Radius.circular(3),
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/splash.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
