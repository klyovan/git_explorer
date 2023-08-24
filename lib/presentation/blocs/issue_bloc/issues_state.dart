import 'package:git_explorer/data/models/issue.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'issues_state.freezed.dart';

@freezed
class IssuesState with _$IssuesState {
  const factory IssuesState.initial() = IssuesStateInitial;

  const factory IssuesState.loading() = IssuesStateLoading;
  const factory IssuesState.error() = IssuesStateError;

  const factory IssuesState.success({required List<Issue> issues}) =
      IssuesStateSuccess;
}
