import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@entity
@JsonSerializable(createJsonKeys: true)
class Movie {
  @primaryKey
  @JsonKey(name: "imdbID", defaultValue: "")
  final String id;
  @JsonKey(name: "Title", defaultValue: "")
  final String title;
  @JsonKey(name: "Year", defaultValue: "")
  final String year;
  @JsonKey(name: "Poster", defaultValue: "")
  final String poster;
  @JsonKey(name: "Type", defaultValue: "")
  final String type;

  Movie({this.id = "", this.title = "", this.year = "", this.poster = "", this.type = ""});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
  Map<String, dynamic> toJson() => _$MovieToJson(this);
}