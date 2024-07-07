class AdyaaElquran {
  final String? category;
  final String? count;
  final String? content;

  AdyaaElquran(
      {required this.category, required this.count, required this.content});
  factory AdyaaElquran.fromjson(Map<String, dynamic> json) => AdyaaElquran(
      category: json['category'] as String,
      count: json['count'] as String,
      content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
