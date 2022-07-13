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
