class AzkarElnom {
  final String? category;
  final String? count;
  final String? content;

  AzkarElnom(
      {required this.category, required this.count, required this.content});
  factory AzkarElnom.fromjson(Map<String, dynamic> json) => AzkarElnom(
      category: json['category'] as String,
      count: json['count'] as String,
      content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
