//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:project1/data/content.dart';
import 'package:project1/data/data.dart';
import 'package:project1/layout/qoutesWidget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/qoute.dart';

class hopeQuote extends StatefulWidget {
  Function fun;
  Function fun2;
  String phoneNumber = '0595536970';

  hopeQuote(this.fun, this.fun2, {Key? key}) : super(key: key);
  @override
  State<hopeQuote> createState() => _hopeQuoteState();
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  final Email send_email = Email(
    body: 'body of email',
    subject: 'subject of email',
    recipients: ['Sojodtalaat@hotmail.com'],
    // cc: ['example_cc@ex.com'],
    // bcc: ['example_bcc@ex.com'],
    // attachmentPaths: ['/path/to/email_attachment.zip'],
    isHTML: false,
  );
}

class _hopeQuoteState extends State<hopeQuote> {
  Quotes? q;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 10, right: 10),
            child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(4),
                            right: Radius.circular(4))),
                    label: Text(
                      'search',
                    ))),
          ),
          Expanded(
            // margin: EdgeInsets.only(top: 10),
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Quotewidget(data[index], widget.fun, widget.fun2);
                }),
          ),
        ],
      ),
    );
  }
}
