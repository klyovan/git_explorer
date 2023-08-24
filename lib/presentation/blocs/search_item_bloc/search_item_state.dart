import 'package:git_explorer/data/models/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_item_state.freezed.dart';

@freezed
class SearchItemState with _$SearchItemState {
  const factory SearchItemState.initial() = SearchItemStateInitial;

  const factory SearchItemState.loading() = SearchItemStateLoading;
  const factory SearchItemState.empty() = SearchItemStateEmpty;

  const factory SearchItemState.error() = SearchItemStateError;

  const factory SearchItemState.success({required List<Item> items}) =
      SearchItemStateSuccess;
}
