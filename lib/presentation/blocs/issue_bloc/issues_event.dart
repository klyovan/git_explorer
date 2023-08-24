import 'package:equatable/equatable.dart';

sealed class IssuesEvent extends Equatable {
  const IssuesEvent();

  @override
  List<Object> get props => [];
}

final class GetIssue extends IssuesEvent {
  const GetIssue(this.owner, this.repoName);

  final String owner;
  final String repoName;

  @override
  List<Object> get props => [owner, repoName];
}
