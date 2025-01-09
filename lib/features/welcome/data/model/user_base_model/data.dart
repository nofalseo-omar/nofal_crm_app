class Data {
  int? id;
  String? type;
  String? name;
  String? email;
  dynamic mobile;
  String? image;
  String? token;

  Data({
    this.id,
    this.type,
    this.name,
    this.email,
    this.mobile,
    this.image,
    this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as int?,
        type: json['type'] as String?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        mobile: json['mobile'] as dynamic,
        image: json['image'] as String?,
        token: json['token'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'name': name,
        'email': email,
        'mobile': mobile,
        'image': image,
        'token': token,
      };
}
