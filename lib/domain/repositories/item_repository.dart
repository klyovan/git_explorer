import 'package:git_explorer/data/models/issue.dart';
import 'package:git_explorer/data/models/item.dart';

abstract class ItemRepository {
  Future<List<Item>> search({required String text});

  Future<List<Issue>> fetchIssues({
    required String owner,
    required String repo,
  });
}
