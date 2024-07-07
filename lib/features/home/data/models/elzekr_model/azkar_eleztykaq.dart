class AzkarEleztykaqz {
  final String? category;
  final String? count;
  final String? content;

  AzkarEleztykaqz(
      {required this.category, required this.count, required this.content});
  factory AzkarEleztykaqz.fromjson(Map<String, dynamic> json) =>
      AzkarEleztykaqz(
          category: json['category'] as String,
          count: json['count'] as String,
          content: json['content'] as String);

  Map<String, dynamic> toJson() =>
      {'category': category, 'count': count, 'content': content};
}
