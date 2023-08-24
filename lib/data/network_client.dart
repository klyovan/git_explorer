import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class NetworkClient {
  NetworkClient({
    required this.dio,
  });

  final Dio dio;

  Future<Response<dynamic>> get(
    String url, [
    Map<String, dynamic>? queryParams,
  ]) async {
    return dio.get(url, queryParameters: queryParams);
  }

  Future<Response<List<dynamic>?>> getAll(String url) async {
    return dio.get<List<dynamic>>(url);
  }

  Future<Response<dynamic>> post(String url, [dynamic data]) async {
    return dio.post(url, data: data);
  }

  Future<Response<String?>> postString(String url, [dynamic data]) async {
    return dio.post(url, data: data);
  }

  Future<Response<dynamic>> put(
    String url, [
    Map<String, dynamic>? queryParams,
  ]) async {
    return dio.put(url, queryParameters: queryParams);
  }

  Future<Response<dynamic>> delete(String url) async {
    return dio.delete(url);
  }
}
