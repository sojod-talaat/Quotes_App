import 'package:flutter/material.dart';
import '../data/qoute.dart';

// ignore: must_be_immutable
class Box extends StatelessWidget {
  Quotes? q;
  Box(this.q, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('hopeQoute');
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(q?.image ?? ''))),
      ),
    );
  }
}
