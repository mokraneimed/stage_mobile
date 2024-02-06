import 'dart:io';

import 'package:dio/dio.dart';
import '../endpoints.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: 2000000,
        receiveTimeout: 2000000,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
    String? lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {
      'lang': lang,
      'Content-Type': 'application/json',
      'authorization': token,
    };
    return await dio!.post(
      data: data,
      url,
      queryParameters: query,
    );
  }
}
