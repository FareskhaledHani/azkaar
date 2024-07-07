class AzkarBadElsala {
  final String? category;
  final String? count;
  final String? content;

  AzkarBadElsala(
      {required this.category, required this.count, required this.content});
  factory AzkarBadElsala.fromjson(Map<String, dynamic> json) => AzkarBadElsala(
      category: json['category'] as String,
      count: json['count'] as String,
      content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
