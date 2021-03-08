
  import 'dart:convert';
  import 'package:json_annotation/json_annotation.dart';

  part 'employee.g.dart';

   List<Employee> employeeFromJson(String str) => List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

  String employeeToJson(List<Employee> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



  @JsonSerializable()
  class Employee {
    int userId;
    int id;
    String title;
    String body;


  Employee({
  this.userId,
  this.id,
  this.title,
  this.body,
  });

    factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);
    Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  }
