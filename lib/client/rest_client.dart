import 'package:dio/dio.dart';

class RestClient {

  late Dio dio;
  static const baseUrl = 'https://6260c2ade7361dff91f9a072.mockapi.io/api/v1';
  static const contentType = "application/json; charset=utf-8";
  static const connectionTimeOut = 5000;
  static const receiveTimeOut = 1000;

  final BaseOptions options =  BaseOptions(
    baseUrl: baseUrl,
    contentType: contentType,
    connectTimeout: connectionTimeOut,
    receiveTimeout: receiveTimeOut,
  );

  RestClient({BaseOptions? baseOptions}){
    dio = Dio(baseOptions?? options);
  }
}

RestClient restClient =  RestClient();