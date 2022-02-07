class UserModel {
  int? userId;
  String? firstName;
  String? lastName;
  String? email;
  AuthTokenInfo? authTokenInfo;

  UserModel(
      {this.userId,
      this.firstName,
      this.lastName,
      this.email,
      this.authTokenInfo});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    authTokenInfo = json['authTokenInfo'] != null
        ? new AuthTokenInfo.fromJson(json['authTokenInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    if (this.authTokenInfo != null) {
      data['authTokenInfo'] = this.authTokenInfo!.toJson();
    }
    return data;
  }
}

class AuthTokenInfo {
  String? accessToken;
  int? expiresIn;

  AuthTokenInfo({this.accessToken, this.expiresIn});

  AuthTokenInfo.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    expiresIn = json['expiresIn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    data['expiresIn'] = this.expiresIn;
    return data;
  }
}
