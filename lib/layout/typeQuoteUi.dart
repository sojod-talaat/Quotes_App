import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/data/data.dart';
import 'package:project1/data/qoute.dart';
import 'package:project1/screens/splash.dart';
import 'package:url_launcher/url_launcher.dart';

//import '../constant/qoutesWidget.dart';
import 'TypeQuoteWidget.dart';

// ignore: camel_case_types
class typesOfQuotes extends StatefulWidget {
  Function function;
  bool isDark;
  String phoneNumber = '0595536970';
  typesOfQuotes(this.function, this.isDark);

  @override
  State<typesOfQuotes> createState() => _typesOfQuotesState();
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}

class _typesOfQuotesState extends State<typesOfQuotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          //color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  arrowColor: Colors.red,
                  accountName: Text('sojod talaat'),
                  accountEmail: Text('sojodtalaat990@hotmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/splash.jpg'),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {});
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('loveQoute');
                  },
                  leading: Icon(Icons.favorite),
                  title: Text('Favorite'),
                  subtitle: Text('Go to Favorite'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('saveOoute');

                    setState(() {});
                  },
                  leading: const Icon(Icons.save_rounded),
                  title: const Text('Saved'),
                  subtitle: const Text('Go to saved'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  leading: const Icon(Icons.perm_identity),
                  title: const Text('home'),
                  subtitle: const Text('Go to home'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                Divider(),
                ListTile(
                  onTap: () {
                    widget._makePhoneCall(widget.phoneNumber);
                  },
                  leading: const Icon(Icons.phone),
                  title: const Text('Contant with  Us'),
                  // subtitle: const Text('Go to saved'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {
                    // ignore: deprecated_member_use
                    launch(
                        'mailto:sojodtalaat990@hotmail.com?subject=This is Subject Title&body=This is Body of Email');
                  },
                  leading: const Icon(Icons.email),
                  title: const Text('Send Us Email'),
                  // subtitle: const Text('Go to saved'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.abc_outlined),
                  title: const Text('About Us'),
                  // subtitle: const Text('Go to saved'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              widget.function;
            },
            icon: Icon(Icons.light_mode_outlined),
            color: Colors.black,
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),

        title: Text('Start your reading journey',
            style: GoogleFonts.dancingScript(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
        // backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 30),
          height: 900,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            padding: const EdgeInsets.all(4),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Box(data[index]);
            },
          )),
    );
  }
}
