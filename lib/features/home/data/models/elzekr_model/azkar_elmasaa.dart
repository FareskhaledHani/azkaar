class AzkarElmasaa {
  final String? category;
  final String? count;
  final String? content;

  AzkarElmasaa(
      {required this.category, required this.count, required this.content});
  factory AzkarElmasaa.fromjson(Map<String, dynamic> json) => AzkarElmasaa(
      category: json['category'] as String,
      count: json['count'] as String,
      content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
