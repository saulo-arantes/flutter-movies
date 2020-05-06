// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Error _$ErrorFromJson(Map<String, dynamic> json) {
  return Error(
    statusCode: json['status_code'] as int,
    statusMessage: json['status_message'] as String,
  );
}

Map<String, dynamic> _$ErrorToJson(Error instance) => <String, dynamic>{
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };
