class AdyaaElnbyaa {
  final String? category;
  final String? count;
  final String? content;

  AdyaaElnbyaa(
      {required this.category, required this.count, required this.content});
  factory AdyaaElnbyaa.fromjson(Map<String, dynamic> json) => AdyaaElnbyaa(
      category: json['category'] as String,
      count: json['count'] as String,
      content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
