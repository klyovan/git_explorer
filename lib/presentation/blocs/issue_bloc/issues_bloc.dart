import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_explorer/domain/usecases/fetch_issues_usecase.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_event.dart';
import 'package:git_explorer/presentation/blocs/issue_bloc/issues_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class IssuesBloc extends Bloc<IssuesEvent, IssuesState> {
  IssuesBloc({required FetchIssuesUseCase fetchIssuesUseCase})
      : _fetchIssuesUseCase = fetchIssuesUseCase,
        super(const IssuesStateInitial()) {
    on<GetIssue>(_onGetIssues);
  }

  final FetchIssuesUseCase _fetchIssuesUseCase;

  Future<void> _onGetIssues(
    GetIssue event,
    Emitter<IssuesState> emit,
  ) async {
    emit(const IssuesState.loading());
    final issues =
        await _fetchIssuesUseCase(owner: event.owner, repo: event.repoName);
    emit(IssuesState.success(issues: issues));
  }
}
