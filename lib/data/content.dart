class content {
  bool? islike;
  bool? issave;
  List<String>? contentQoute;

  content.fromMap(Map<String, dynamic> data) {
    islike = data['islike'];
    issave = data['issave'];
    contentQoute = data['contentQoute'];
  }
}

// List<content> con1 = [
//   content(false, false, [
//     'sojos',
//     'saja',
//     'dd',
//   ]),
//   content(
//       false,
//       false,
//       [
//         'sojos',
//         'saja',
//         'dd',
//       ]..toList()),
//   content(
//       false,
//       false,
//       [
//         'sojos',
//         'saja',
//         'dd',
//       ]..toList()),
// ];
