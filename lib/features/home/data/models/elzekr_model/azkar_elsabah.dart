class AzkarElsabah {
  final String? category;
  final String? count;
  final String? content;

  AzkarElsabah(
      {required this.category, required this.count, required this.content});
  factory AzkarElsabah.fromjson(Map<String, dynamic> json) => AzkarElsabah(
      category: json['category'] as String,
      count: json['count'] as String,
      content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
