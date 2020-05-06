import 'package:json_annotation/json_annotation.dart';

part 'Error.g.dart';

@JsonSerializable()
class Error {
  Error({
    this.statusCode,
    this.statusMessage
  });

  @JsonKey(name: 'status_code')
  final int statusCode;

  @JsonKey(name: 'status_message')
  final String statusMessage;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
