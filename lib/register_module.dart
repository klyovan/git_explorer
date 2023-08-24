import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://api.github.com/';

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => _getDio(url);

  Dio _getDio(String url) {
    final dio = Dio(BaseOptions(baseUrl: url));
    final interceptors = [
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
      ),
    ];

    return dio..interceptors.addAll(interceptors);
  }

// same thing works for instances that's gotten asynchronous.
// all you need to do is wrap your instance with a future and tell injectable how
// to initialize it
// @preResolve // if you need to pre resolve the value
// Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
// Also, make sure you await for your configure function before running the App.
}
