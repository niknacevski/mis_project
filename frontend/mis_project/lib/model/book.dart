class Book {
  BigInt? id;
  String title;
  String description;
  String genre;

  Book({required this.title,
      required this.description,
      required this.genre,
      this.id});

  Map<String, dynamic> toJson() => {
        'id': id.toString(),
        'title': title,
        'description': description,
        'genre': genre
      };

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: BigInt.parse(json['id'].toString()),
        title: json['title'] as String,
        description: json['description'] as String,
        genre: json['genre'] as String,
      );
}
