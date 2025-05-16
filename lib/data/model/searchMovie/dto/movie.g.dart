// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['imdbID'] as String? ?? '',
      title: json['Title'] as String? ?? '',
      year: json['Year'] as String? ?? '',
      poster: json['Poster'] as String? ?? '',
      type: json['Type'] as String? ?? '',
    );

abstract final class _$MovieJsonKeys {
  static const String id = 'imdbID';
  static const String title = 'Title';
  static const String year = 'Year';
  static const String poster = 'Poster';
  static const String type = 'Type';
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'imdbID': instance.id,
      'Title': instance.title,
      'Year': instance.year,
      'Poster': instance.poster,
      'Type': instance.type,
    };
