class SignedInUserResponseModel {
  SignedInUserResponseModel({
    this.status,
    this.message,
  });

  SignedInUserResponseModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
  }

  bool? status;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    return map;
  }
}
