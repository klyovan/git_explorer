// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/datasources/local/api/item_api.dart' as _i4;
import 'data/network_client.dart' as _i7;
import 'data/repositories/item_repository.dart' as _i6;
import 'domain/repositories/item_repository.dart' as _i5;
import 'domain/usecases/fetch_issues_usecase.dart' as _i9;
import 'domain/usecases/search_item_usecase.dart' as _i8;
import 'presentation/blocs/issue_bloc/issues_bloc.dart' as _i10;
import 'presentation/blocs/search_item_bloc/search_item_bloc.dart' as _i11;
import 'register_module.dart' as _i12;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i3.Dio>(
      () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i4.ItemApi>(() => _i4.ItemApi(dio: gh<_i3.Dio>()));
  gh.factory<_i5.ItemRepository>(
      () => _i6.ItemRepositoryImpl(itemApi: gh<_i4.ItemApi>()));
  gh.factory<_i7.NetworkClient>(() => _i7.NetworkClient(dio: gh<_i3.Dio>()));
  gh.factory<_i8.SearchItemUseCase>(
      () => _i8.SearchItemUseCase(itemRepository: gh<_i5.ItemRepository>()));
  gh.factory<_i9.FetchIssuesUseCase>(
      () => _i9.FetchIssuesUseCase(itemRepository: gh<_i5.ItemRepository>()));
  gh.factory<_i10.IssuesBloc>(
      () => _i10.IssuesBloc(fetchIssuesUseCase: gh<_i9.FetchIssuesUseCase>()));
  gh.factory<_i11.SearchItemBloc>(() =>
      _i11.SearchItemBloc(searchItemUseCase: gh<_i8.SearchItemUseCase>()));
  return getIt;
}

class _$RegisterModule extends _i12.RegisterModule {}
