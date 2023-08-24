import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_explorer/domain/usecases/search_item_usecase.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_event.dart';
import 'package:git_explorer/presentation/blocs/search_item_bloc/search_item_state.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class SearchItemBloc extends Bloc<SearchItemEvent, SearchItemState> {
  SearchItemBloc({required SearchItemUseCase searchItemUseCase})
      : _searchItemUseCase = searchItemUseCase,
        super(SearchItemStateInitial()) {
    on<SearchItem>(
      _onSearch,
      transformer: (events, mapper) => events
          .debounceTime(const Duration(milliseconds: 300))
          .switchMap(mapper),
    );
  }

  final SearchItemUseCase _searchItemUseCase;

  Future<void> _onSearch(
    SearchItem event,
    Emitter<SearchItemState> emit,
  ) async {
    emit(const SearchItemState.loading());
    final items = await _searchItemUseCase(text: event.text);
    if (items.isEmpty) {
      emit(const SearchItemState.empty());
    } else {
      emit(SearchItemState.success(items: items));
    }
  }
}
