class Author {
  BigInt? id;
  String firstName;
  String lastName;
  String dateOfBirth;
  String email;

  Author({required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.email,
    this.id});

  Map<String, dynamic> toJson() => {
    'id': id.toString(),
    'firstName': firstName,
    'lastName': lastName,
    'dateOfBirth': dateOfBirth,
    'email': email
  };

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    id: BigInt.parse(json['id'].toString()),
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    dateOfBirth: json['dateOfBirth'] as String,
    email: json['email'] as String,
  );
}
