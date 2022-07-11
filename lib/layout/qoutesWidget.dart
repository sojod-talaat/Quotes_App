import 'package:flutter/material.dart';
import 'package:project1/data/content.dart';
import 'package:project1/data/data.dart';
import 'package:share_plus/share_plus.dart';
import '../data/qoute.dart';

class Quotewidget extends StatefulWidget {
  Quotes q;
  Function fun1;
  Function fun2;
  int i = 1;
  // List<String>? NEW = [];
//  bool islike = false;
  Quotewidget(this.q, this.fun1, this.fun2, {Key? key}) : super(key: key);

  @override
  State<Quotewidget> createState() => _QuotewidgetState();
  void share() {
    Share.share(q.type ?? '');
  }
}

class _QuotewidgetState extends State<Quotewidget> {
  content? c;
  bool islike = false;

  // List<String>? put(int index) {
  //   switch (index) {
  //     case 0:
  //       widget.NEW = data[index].con!.contentQoute;
  //       break;
  //     case 1:
  //       widget.NEW = data[index].con!.contentQoute;
  //       break;
  //     default:
  //   }
  // }

  List<String> hope = [
    ''' ' But those who hope in the Lord will renew their strength. They will soar on wings like eagles;
   they will run and not grow weary, they will walk and not be faint.''',
    '''  For I know the plans I have for you,’ declares the Lord, 
   plans to prosper you and not to harm you, plans to give you hope and a future'''
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          height: 200,
          width: double.maxFinite,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200]),
          child: Center(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 9, top: 9),
                height: 100,
                child: const Center(
                  child: Text(
                    //  widget.q.con?.contentQoute?.first ?? '',

                    // widget.q.content![index],
                    '''May the God of hope fill you with all joy and peace as you trust in him,
                ''',

                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const Divider(),
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.fun1(widget.q);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: (widget.q.isLike) ? Colors.red : Colors.grey,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.view_agenda_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        widget.share();
                      },
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        widget.fun2(widget.q);
                      },
                      icon: Icon(
                        Icons.save_alt_outlined,
                        color: widget.q.issave ? Colors.blue : Colors.grey,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ],
    );
  }
}
