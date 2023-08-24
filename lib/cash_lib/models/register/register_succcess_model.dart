class CashRegisterModel {
  bool? status;
  String? message;
  Data? data;


  CashRegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }


}

class Data {
  User? user;

  Data({this.user });

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }


}

class User {
  String? phoneNumber;
  String? firstName;
  String? lastName;
  String? updatedAt;
  String? createdAt;
  int? id;

  User(
      {this.phoneNumber,
        this.firstName,
        this.lastName,
        this.updatedAt,
        this.createdAt,
        this.id});

  User.fromJson(Map<String, dynamic> json) {
    phoneNumber = json['phone_number'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
}

