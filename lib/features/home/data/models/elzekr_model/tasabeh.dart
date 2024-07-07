class Tasabeh {
  final String? category;
  final String? count;
  final String? content;

  Tasabeh({required this.category, required this.count, required this.content});
  factory Tasabeh.fromjson(Map<String, dynamic> json) => Tasabeh(
      category: json['category'] as String,
      count: json['count'] as String,
      content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
