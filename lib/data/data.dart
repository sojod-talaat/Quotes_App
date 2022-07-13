//import 'package:project1/data/content1.dart';
import 'package:project1/data/content.dart';
import 'package:project1/data/qoute.dart';

List<Map<String, dynamic>> qoute = [
  {
    'type': 'Hope',
    'image': 'images/hope3.jpg',
    'content': {
      'islike': false,
      'issave': false,
      'contentQoute': [
        ''' We must accept finite disappointment, but never lose infinite hope ''',
        ''' Everything that is done in this world is done by hope ''',
        ''' May your choices reflect your hopes, not your fears ''',
        '''It is because of hope that you suffer. It is through hope that you’ll change things. ''',
        ''' If we will be quiet and ready enough, we shall find compensation in every disappointment.''',
        ''' Hope is being able to see that there is light despite all of the darkness''',
      ],
    }
  },
  {
    'type': 'success',
    'image': 'images/family2.jpg',
    'content': {
      'islike': false,
      'issave': false,
      'contentQoute': [
        '''Love recognizes no barriers It jumps hurdles, leaps fences,
  penetrates walls to arrive at its destination full of hope''',
        '''They say a person needs just three things to be truly happy in this world:
 someone to love, something to do, and something to hope for
 ''',
        '''Love is a springtime plant that perfumes everything with its hope,
   even the ruins to which it clings.” 
 Gustave Flaubert''',
        '''The past is a source of knowledge, and the future is a source of hope. 
Love of the past implies faith in the future.''',
        '''Courage is like love; it must have hope for nourishment.''',
        '''The hope you feel when you are in love is not necessarily for anything in particular.
 Love brings something inside you to life. 
 Perhaps it is just the 
 full dimensionality of your own capacity to feel that returns''',
        '''They say a person needs just three things to be truly happy in this world: 
someone to love, something to do, and something to hope for''',
        '''Love without hope will not survive, love without faith changes nothing.
 Love gives power to hope and faith.''',
        '''How far would you go to keep the hope of love alive''',
      ]
    }
  },
  {
    'type': 'Happiness',
    'image': 'images/happiness.jpg',
    'content': {
      'islike': false,
      'issave': false,
      'contentQoute': [
        '''It is a helluva start, being able to recognize what makes you happy. ''',
        ''' Happiness is not something ready-made, It comes from your own actions.''',
        ''' Happiness depends upon ourselves. ''',
        '''To be kind to all, to like many and love a few, to be needed
         and wanted by those we love, is certainly the nearest
          we can come to happiness. ''',
        '''Don’t underestimate the value of Doing Nothing,
         of just going along, listening to all the things you can not hear, 
         and not bothering. ''',
      ]
    }
  },
  {
    'type': 'Life',
    'image': 'images/life.jpg',
    'content': {
      'islike': false,
      'issave': false,
      'contentQoute': [
        ''' The time is always right to do what is right ''',
        '''The best thing to hold onto in life is each other ''',
        ''' If you don't like the road you're walking, 
           start paving another one.''',
        '''Life is short, but it is wide. This too shall pass. ''',
        '''The two most important days in your life are the day you are
        born and the day you find out why. '''
      ]
    }
  },
  {
    'type': 'Friendship',
    'image': 'images/friends.jpg',
    'content': {
      'islike': false,
      'issave': false,
      'contentQoute': [
        '''  True friends are like diamonds—bright, beautiful,
  valuable, and always in style ''',
        '''A good friend knows all your stories. 
  A best friend helped you create them.  ''',
        ''' A friend is someone who makes it easy to believe in yourself''',
        ''' There’s nothing better than a friend, unless it is a friend with chocolate.''',
        ''' Good friends are like stars, you don’t always see them,
  but you know they’re always there.   ''',
        ''' We’ve been friends for so long I can’t remember
   which one of us is the bad influence. ''',
      ]
    }
  },
  {
    'type': 'love',
    'image': 'images/love.jpg',
    'content': {
      'islike': false,
      'issave': false,
      'contentQoute': [
        '''  True friends are like diamonds—bright, beautiful,
  valuable, and always in style ''',
        '''A good friend knows all your stories. 
  A best friend helped you create them.  ''',
        ''' A friend is someone who makes it easy to believe in yourself''',
        ''' There’s nothing better than a friend, unless it is a friend with chocolate.''',
        ''' Good friends are like stars, you don’t always see them,
  but you know they’re always there.   ''',
        ''' We’ve been friends for so long I can’t remember
   which one of us is the bad influence. ''',
      ]
    }
  }
];
List<Quotes> data = qoute.map((e) {
  return Quotes.FromMap(e);
}).toList();
