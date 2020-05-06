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

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$ErrorFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$ErrorToJson`.
  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
