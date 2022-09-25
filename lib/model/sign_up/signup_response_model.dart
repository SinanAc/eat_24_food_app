class SignUpResponse {
   String? status;
   String? id;

  SignUpResponse({
    this.status,
    this.id,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => SignUpResponse(
        status: json["message"] ?? "",
        id: json["userId"] ?? "",
      );
}
