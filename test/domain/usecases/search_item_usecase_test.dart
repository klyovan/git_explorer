import 'package:flutter_test/flutter_test.dart';
import 'package:git_explorer/domain/repositories/item_repository.dart';
import 'package:git_explorer/domain/usecases/search_item_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/mock_item.dart';
import 'search_item_usecase_test.mocks.dart';

@GenerateMocks([ItemRepository])
void main() {
  final itemRepository = MockItemRepository();
  const String searchText = 'searchText';
  final mockItem = getMockItem();

  final useCase = SearchItemUseCase(itemRepository: itemRepository);

  tearDown(() {
    reset(itemRepository);
  });

  group('SearchItemUseCase tests -', () {
    test(
      'GIVEN repository succeed '
      'WHEN use case is called '
      'THEN list of items should be returned',
      () async {
        when(itemRepository.search(text: searchText))
            .thenAnswer((_) => Future.value([mockItem]));

        final result = await useCase.call(text: searchText);

        expect(
          result,
          equals([mockItem]),
        );
        verify(itemRepository.search(text: searchText)).called(1);
      },
    );
  });
}
