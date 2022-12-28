class RegisterRequestModel {
  String? login;
  String? password;

  RegisterRequestModel({this.login, this.password});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['login'] = login;
    data['password'] = password;
    return data;
  }
}