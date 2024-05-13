// ignore_for_file: avoid_dynamic_calls

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:sweetlifesaver/core/exceptions.dart';
import 'package:sweetlifesaver/services/shared_preference_service.dart';
import 'package:sweetlifesaver/utils/logger.dart';

class ApiClient {
  final Dio dio = Dio();
  ApiClient() {
    dio.options.connectTimeout = const Duration(minutes: 3).inMilliseconds;
    dio.options.receiveTimeout = const Duration(minutes: 3).inMilliseconds;
  }

  Future<Response<Map<String, dynamic>>> post(
    String path,
    dynamic data,
  ) async {
    final String? token = SharedPreferenceService.getString('token');
    Logger.write(token.toString());
    try {
      return await dio.post(
        path,
        data: data,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioError catch (e) {
      Logger.write(e.message);
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> put(String path, dynamic data) async {
    final String? token = SharedPreferenceService.getString('token');
    try {
      return await dio.put(
        path,
        data: data,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioError catch (e) {
      Logger.write(e.message);
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> delete(String path) async {
    final String? token = SharedPreferenceService.getString('token');
    try {
      return await dio.delete(
        path,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioError catch (e) {
      Logger.write(e.message);
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  Future<Response<Map<String, dynamic>>> get(String path) async {
    final String? token = SharedPreferenceService.getString('token');
    Logger.write(token.toString());
    try {
      return await dio.get(
        path,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioError catch (e) {
      Logger.write(e.message);
      throw ApiException(e.response!.data["message"].toString());
    }
  }

  // patch method
  Future<Response<Map<String, dynamic>>> patch(
    String path,
    dynamic data,
  ) async {
    final String? token = SharedPreferenceService.getString('token');
    try {
      return await dio.patch(
        path,
        data: data,
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
    } on DioError catch (e) {
      Logger.write(e.message);
      throw ApiException(e.response!.data["message"].toString());
    }
  }
}

class MultiPartClient extends http.BaseClient {
  final http.Client _httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.persistentConnection = false;

    request.headers["Content-Type"] = "application/json";
    print(request.headers);
    print(request.url);
    // Future<http.StreamedResponse> response = _httpClient.send(request);
    // alice.onHttpClientRequest(request.)
    // debugPrint(request.url.toString());
    // alice.onHttpResponse(await http.Response.fromStream(await response));
    return _httpClient.send(request);
  }
}
