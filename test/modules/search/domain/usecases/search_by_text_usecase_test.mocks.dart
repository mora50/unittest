// Mocks generated by Mockito 5.1.0 from annotations
// in unittest/test/modules/search/domain/usecases/search_by_text_usecase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:unittest/modules/search/domain/entities/repo_entity.dart'
    as _i6;
import 'package:unittest/modules/search/domain/errors/errors.dart' as _i5;
import 'package:unittest/modules/search/domain/repositories/search_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [SearchRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchRepository extends _i1.Mock implements _i3.SearchRepository {
  MockSearchRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.ErrorText, List<_i6.RepoEntity>>> call(
          String? text) =>
      (super.noSuchMethod(Invocation.method(#call, [text]),
              returnValue:
                  Future<_i2.Either<_i5.ErrorText, List<_i6.RepoEntity>>>.value(
                      _FakeEither_0<_i5.ErrorText, List<_i6.RepoEntity>>()))
          as _i4.Future<_i2.Either<_i5.ErrorText, List<_i6.RepoEntity>>>);
}

/// A class which mocks [RepoEntity].
///
/// See the documentation for Mockito's code generation for more information.
class MockRepoEntity extends _i1.Mock implements _i6.RepoEntity {
  MockRepoEntity() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get number =>
      (super.noSuchMethod(Invocation.getter(#number), returnValue: 0) as int);
  @override
  String get fullname =>
      (super.noSuchMethod(Invocation.getter(#fullname), returnValue: '')
          as String);
}