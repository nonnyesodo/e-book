class BooksModel {
  final String title, author, summary, rating, avatar;
  final List<String> content;

  BooksModel(
      {required this.avatar,
      required this.summary,
      required this.title,
      required this.content,
      required this.rating,
      required this.author});
}
