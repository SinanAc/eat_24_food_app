class SignUpResponseModel {
   String? message;
   String? id;

  SignUpResponseModel({
    this.message,
    this.id,
  });

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) => SignUpResponseModel(
        message: json["message"] ?? "",
        id: json["userId"] ?? "",
      );
}
