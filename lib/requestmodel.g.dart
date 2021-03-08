// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return RequestModel(
    title: json['title'] as String,
    body: json['body'] as String,
    userId: json['userId'] as int,
  );
}

Map<String, dynamic> _$RequestModelToJson(RequestModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'userId': instance.userId,
    };
