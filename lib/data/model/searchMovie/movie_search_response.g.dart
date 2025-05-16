// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieSearchResponse _$MovieSearchResponseFromJson(Map<String, dynamic> json) =>
    MovieSearchResponse(
      (json['Search'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

abstract final class _$MovieSearchResponseJsonKeys {
  static const String movieList = 'Search';
}

Map<String, dynamic> _$MovieSearchResponseToJson(
        MovieSearchResponse instance) =>
    <String, dynamic>{
      'Search': instance.movieList,
    };
