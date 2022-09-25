class SignUpModel {
  final String? email;
  final String? name;
  final String? password;
  final String? confirmPassword;
  final String? role;

  /// final String message;

  SignUpModel(
      {required this.email,
      required this.name,
      required this.password,
      required this.confirmPassword,
      required this.role
      // required this.message,
      });

  Map<String, dynamic>? toJson() => {
        "name": name,
        "email": email,
        "password": password,
        "confirmPassword": password,
        "role": role
      };

  // factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
  //     name: json['name'] ?? '',
  //     email: json['email'] ?? ''
  //     message: json['detail'] ?? ''
  //    );
}
