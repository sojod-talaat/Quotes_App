//import 'package:project1/data/content1.dart';
import 'package:project1/data/content.dart';
import 'package:project1/data/qoute.dart';

List<Map<String, dynamic>> qoute = [
  {
    'type': 'Hope',
    'image': 'images/hope3.jpg',
    'content1': {
      'islike': 'false',
      'issave': 'false',
      'contentQoute': [
        ''' May the God of hope fill you with all joy and peace as you trust in him,
       so that you may overflow with hope by the power of the Holy Spirit.''',
      ],
    }
  },
  {
    'type': 'success',
    'image': 'images/family2.jpg',
    'content1': {
      'islike': 'false',
      'issave': 'false',
      'contentQoute': [
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
        ''' May the God of hope fill you with all joy and peace as you trust in him,
       so that you may overflow with hope by the power of the Holy Spirit.''',
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
      ]
    }
  },
  {
    'type': 'Happiness',
    'image': 'images/happiness.jpg',
    'content1': {
      'islike': 'false',
      'issave': 'false',
      'contentQoute': [
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
        ''' May the God of hope fill you with all joy and peace as you trust in him,
       so that you may overflow with hope by the power of the Holy Spirit.''',
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
      ]
    }
  },
  {
    'type': 'Life',
    'image': 'images/life.jpg',
    'content1': {
      'islike': 'false',
      'issave': 'false',
      'contentQoute': [
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
        ''' May the God of hope fill you with all joy and peace as you trust in him,
       so that you may overflow with hope by the power of the Holy Spirit.''',
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
      ]
    }
  },
  {
    'type': 'Friendship',
    'image': 'images/friends.jpg',
    'content1': {
      'islike': 'false',
      'issave': 'false',
      'contentQoute': [
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
        ''' May the God of hope fill you with all joy and peace as you trust in him,
       so that you may overflow with hope by the power of the Holy Spirit.''',
        '''Tell me and I forget. Teach me and I remember. Involve me and I learn." 
                  -Benjamin Franklin''',
      ]
    }
  },
  {
    'type': 'love',
    'image': 'images/love.jpg',
  }
];

List<Quotes> data = qoute.map((e) {
  return Quotes.FromMap(e);
}).toList();
