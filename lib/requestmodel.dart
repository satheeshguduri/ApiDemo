

import 'package:json_annotation/json_annotation.dart';

part 'requestmodel.g.dart';

@JsonSerializable()
class RequestModel{

  String title;
  String body;
  int userId;

  // String username;
  //String password;

  RequestModel({this.title, this.body, this.userId});

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$RequestModelToJson(this);
}


//to json