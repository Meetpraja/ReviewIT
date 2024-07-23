class ReviewModel {
  ReviewModel({
      String? username, 
      String? userImage, 
      String? productTitle, 
      String? uploadedImage, 
      String? review,
  }){
    _username = username;
    _userImage = userImage;
    _productTitle = productTitle;
    _uploadedImage = uploadedImage;
    _review = review;
}

  ReviewModel.fromJson(dynamic json) {
    _username = json['username'];
    _userImage = json['UserImage'];
    _productTitle = json['productTitle'];
    _uploadedImage = json['uploadedImage'];
    _review = json['review'];
  }
  String? _username;
  String? _userImage;
  String? _productTitle;
  String? _uploadedImage;
  String? _review;
ReviewModel copyWith({  String? username,
  String? userImage,
  String? productTitle,
  String? uploadedImage,
  String? review,
}) => ReviewModel(  username: username ?? _username,
  userImage: userImage ?? _userImage,
  productTitle: productTitle ?? _productTitle,
  uploadedImage: uploadedImage ?? _uploadedImage,
  review: review ?? _review,
);
  String? get username => _username;
  String? get userImage => _userImage;
  String? get productTitle => _productTitle;
  String? get uploadedImage => _uploadedImage;
  String? get review => _review;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['username'] = _username;
    map['UserImage'] = _userImage;
    map['productTitle'] = _productTitle;
    map['uploadedImage'] = _uploadedImage;
    map['review'] = _review;
    return map;
  }

}