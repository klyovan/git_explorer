import 'package:git_explorer/data/models/issue.dart';
import 'package:git_explorer/domain/repositories/item_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchIssuesUseCase {
  final ItemRepository _itemRepository;

  const FetchIssuesUseCase({
    required ItemRepository itemRepository,
  }) : _itemRepository = itemRepository;

  Future<List<Issue>> call(
      {required String owner, required String repo}) async {
    return _itemRepository.fetchIssues(owner: owner, repo: repo);
  }
}
