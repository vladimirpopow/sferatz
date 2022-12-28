class LoginRequestModel {
  String? login;
  String? password;

  LoginRequestModel({this.login, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile_id'] = 121153711;
    data['password'] = "123456";
    data['device_token'] = "abcdefg";
    // data['password'] = "123456";
    // data['password'] = "123456";
    return data;
  }
}