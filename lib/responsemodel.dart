
import 'package:json_annotation/json_annotation.dart';

part 'responsemodel.g.dart';

@JsonSerializable()
class ResponseModel{


  int id;
  String title;
  String body;
  int userId;

  ResponseModel({this.id, this.title, this.body, this.userId});

  factory ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseModelToJson(this);

// from json

}