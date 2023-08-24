import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ItemApi {
  ItemApi({required this.dio});

  final Dio dio;

  Future<List<dynamic>> searchItem(String text) async =>
      dio.get('search/repositories', queryParameters: {
        'q': text,
        'sort': 'stars',
        'order': 'desc'
      }).then((response) {
        return response.data['items'] as List<dynamic>;
      });

  Future<List<dynamic>> fetchIssues(String owner, String repo) async =>
      dio.get('repos/$owner/$repo/pulls', queryParameters: {'state': 'open'}).then(
          (response) {
        return response.data as List<dynamic>;
      });
}
