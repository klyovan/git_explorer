import 'package:git_explorer/data/models/item.dart';
import 'package:git_explorer/domain/repositories/item_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchItemUseCase {
  final ItemRepository _itemRepository;

  const SearchItemUseCase({
    required ItemRepository itemRepository,
  }) : _itemRepository = itemRepository;

  Future<List<Item>> call({required String text}) async {
    return _itemRepository.search(text: text);
  }
}
