import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:thirdapp/restclient.dart';



class DioClient {
  Dio dio;

  DioClient() {
    dio = Dio(); // Provide a dio instance
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      request: true,
      responseBody: true,
      compact: false,
    )

    );
  }

  ApiClient getDioClient() => ApiClient(dio);

}