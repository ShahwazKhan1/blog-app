class Blog {
  final String id;
  final String posterId;
  final String title;
  final String content;
  final String imageUrl;
  final DateTime updatedAt;
  final List<String> topics;

  Blog({
    required this.id,
    required this.posterId,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.topics,
    required this.updatedAt,
  });
}
