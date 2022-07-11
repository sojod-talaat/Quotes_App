import 'content.dart';

class Quotes {
  String? type;
  String? image;
  bool isLike = false;
  bool issave = false;
  content? con;
  Quotes(this.type, this.image, this.issave, this.isLike);
  Quotes.FromMap(Map<String, dynamic> data) {
    type = data['type'];
    image = data['image'];
    isLike = false;
    issave = false;
    con = data['con'] != null ? content.fromMap(data['con']) : null;
  }
}
