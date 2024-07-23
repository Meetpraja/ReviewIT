

class ProductModel {
  ProductModel({
    String? id,
    String? categories,
    String? title,
    String? subTitle,
    String? img,
  }) {
    _id = id;
    _categories = categories;
    _title = title;
    _subTitle = subTitle;
    _img = img;
  }

  ProductModel.fromJson(dynamic json) {
    _id = json['id'];
    _categories = json['categories'];
    _title = json['Title'];
    _subTitle = json['subTitle'];
    _img = json['img'];
  }
  String? _id;
  String? _categories;
  String? _title;
  String? _subTitle;
  String? _img;
  ProductModel copyWith({
    String? id,
    String? categories,
    String? title,
    String? subTitle,
    String? img,
  }) =>
      ProductModel(
        id: id ?? _id,
        categories: categories ?? _categories,
        title: title ?? _title,
        subTitle: subTitle ?? _subTitle,
        img: img ?? _img,
      );
  String? get id => _id;
  String? get categories => _categories;
  String? get title => _title;
  String? get subTitle => _subTitle;
  String? get img => _img;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['categories'] = _categories;
    map['Title'] = _title;
    map['subTitle'] = _subTitle;
    map['img'] = _img;
    return map;
  }
}
