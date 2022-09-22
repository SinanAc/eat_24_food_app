class SignupModel {
  String name;
  String email;
  String? password;
  String? confirmPassword;
  String message;
  SignupModel({
     required this.name,
     required this.email,
     this.password,
     this.confirmPassword,
     required this.message,
  });

  Map<String,dynamic>toJson()=>{
    "name":name,
    "email":email,
    "password":password,
    "confirm_password":confirmPassword,
  };

  factory SignupModel.fromJson(Map<String,dynamic> json)=>SignupModel(
    name : json['name']??'',
    email : json['email']??'',
    message: json['detail']??''
  );
}
