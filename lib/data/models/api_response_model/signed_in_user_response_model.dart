class TokenResponseModel {
  final String token;

  TokenResponseModel({required this.token});

  // Factory constructor to create an instance from a JSON map
  factory TokenResponseModel.fromJson(Map<String, dynamic> json) {
    return TokenResponseModel(
      token: json['token'] as String,
    );
  }

  // Method to convert an instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
