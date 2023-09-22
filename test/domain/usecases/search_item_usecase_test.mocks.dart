// Mocks generated by Mockito 5.4.2 from annotations
// in git_explorer/test/domain/usecases/search_item_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:git_explorer/data/models/issue.dart' as _i5;
import 'package:git_explorer/data/models/item.dart' as _i4;
import 'package:git_explorer/domain/repositories/item_repository.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [ItemRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockItemRepository extends _i1.Mock implements _i2.ItemRepository {
  MockItemRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.Item>> search({required String? text}) =>
      (super.noSuchMethod(
        Invocation.method(
          #search,
          [],
          {#text: text},
        ),
        returnValue: _i3.Future<List<_i4.Item>>.value(<_i4.Item>[]),
      ) as _i3.Future<List<_i4.Item>>);
  @override
  _i3.Future<List<_i5.Issue>> fetchIssues({
    required String? owner,
    required String? repo,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchIssues,
          [],
          {
            #owner: owner,
            #repo: repo,
          },
        ),
        returnValue: _i3.Future<List<_i5.Issue>>.value(<_i5.Issue>[]),
      ) as _i3.Future<List<_i5.Issue>>);
}