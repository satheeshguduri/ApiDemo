// here we consume the apis





import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:thirdapp/requestmodel.dart';
import 'package:thirdapp/responsemodel.dart';

import 'employee.dart';

part 'restclient.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class ApiClient {

  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

   @GET('/posts')
   Future<List<Employee>> getUsers();

   @POST('/posts')
    Future<ResponseModel>  doPost(@Body() RequestModel obj);

  // @POST('/posts')
  // Future<BodyRes> doPost(@Body() BodyObj obj);
}
