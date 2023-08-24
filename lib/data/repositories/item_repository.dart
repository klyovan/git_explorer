import 'package:git_explorer/data/datasources/local/api/item_api.dart';
import 'package:git_explorer/data/models/issue.dart';
import 'package:git_explorer/data/models/item.dart';
import 'package:git_explorer/domain/repositories/item_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ItemRepository)
class ItemRepositoryImpl implements ItemRepository {
  ItemRepositoryImpl({required this.itemApi});

  final ItemApi itemApi;

  Future<List<Item>> search({required String text}) async {
    return itemApi.searchItem(text).then((data) {
      return data.map((e) => Item.fromJson(e)).toList();
    });
  }

  Future<List<Issue>> fetchIssues(
      {required String owner, required String repo}) async {
    return itemApi.fetchIssues(owner, repo).then((data) {
      return data.map((e) => Issue.fromJson(e)).toList();
    });
  }
}
