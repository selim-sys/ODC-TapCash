class TapCashLoginModel {
  bool? status;
  String? message;
  Data? data;


  TapCashLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

}

class Data {
  String? token;
  User? user;
  Null? errors;


  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    errors = json['errors'];
  }

}

class User {
  int? id;
  String? phoneNumber;
  String? pinCode;
  String? firstName;
  String? lastName;
  int? enabled;
  Null? parentId;
  String? type;
  String? mobileVerifiedAt;
  Null? mobileVerifyCode;
  int? mobileAttemptsLeft;
  Null? mobileLastAttemptDate;
  Null? mobileVerifyCodeSentAt;
  String? lastLoginAt;
  String? createdAt;
  String? updatedAt;



  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phoneNumber = json['phone_number'];
    pinCode = json['pin_code'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    enabled = json['enabled'];
    parentId = json['parent_id'];
    type = json['type'];
    mobileVerifiedAt = json['mobile_verified_at'];
    mobileVerifyCode = json['mobile_verify_code'];
    mobileAttemptsLeft = json['mobile_attempts_left'];
    mobileLastAttemptDate = json['mobile_last_attempt_date'];
    mobileVerifyCodeSentAt = json['mobile_verify_code_sent_at'];
    lastLoginAt = json['last_login_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

}

