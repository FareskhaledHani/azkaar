import 'package:equatable/equatable.dart';

import 'array.dart';

class AlllAzkarModel extends Equatable {
  final int? id;
  final String? category;
  final String? audio;
  final String? filename;
  final List<Array>? array;

  const AlllAzkarModel({
    this.id,
    this.category,
    this.audio,
    this.filename,
    this.array,
  });

  factory AlllAzkarModel.fromJson(Map<String, dynamic> json) {
    return AlllAzkarModel(
      id: json['id'] as int?,
      category: json['category'] as String?,
      audio: json['audio'] as String?,
      filename: json['filename'] as String?,
      array: (json['array'] as List<dynamic>?)
          ?.map((e) => Array.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'category': category,
        'audio': audio,
        'filename': filename,
        'array': array?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [id, category, audio, filename, array];
}
