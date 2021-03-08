// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) {
  return ResponseModel(
    id: json['id'] as int,
    title: json['title'] as String,
    body: json['body'] as String,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$ResponseModelToJson(ResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
    };
