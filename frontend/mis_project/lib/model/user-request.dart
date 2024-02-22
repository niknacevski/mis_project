class UserRequest {
  String username;
  String password;
  String confirmPassword;

  UserRequest(
      {required this.username,
        required this.password,
        required this.confirmPassword});

  Map<String, dynamic> toJson() => {
    'username': username,
    'password': password,
    'confirmPassword': confirmPassword,
  };

  factory UserRequest.fromJson(Map<String, dynamic> json) => UserRequest(
    username: json['username'] as String,
    password: json['password'] as String,
    confirmPassword: json['confirmPassword'] as String,
  );
}
