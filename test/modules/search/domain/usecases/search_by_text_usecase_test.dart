import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:unittest/modules/search/domain/entities/repo_entity.dart';
import 'package:unittest/modules/search/domain/errors/errors.dart';
import 'package:unittest/modules/search/domain/errors/messages.dart';
import 'package:unittest/modules/search/domain/repositories/search_repository.dart';
import 'package:unittest/modules/search/domain/usecases/search_by_text_usecase.dart';

import 'search_by_text_usecase_test.mocks.dart';

@GenerateMocks([SearchRepository, RepoEntity])
void main() {
  late MockSearchRepository _repository;

  //System under testing
  late SearchByText sut;
  var mockRepo = [MockRepoEntity()];
  setUpAll(() {
    _repository = MockSearchRepository();
    sut = SearchByText(_repository);
  });

  group('Usecase - SearchText / ', () {
    test('Should return List of repos', () async {
      // arrange
      when(_repository(any)).thenAnswer((_) async => Right(mockRepo));
      // act
      var result = await sut('test');
      // asset
      expect(result.fold(id, id), isA<List<RepoEntity>>());
    });

    test('Should return a error', () async {
      // arrange
      when(_repository(any))
          .thenAnswer((_) async => Left(ErrorText(ErrorMessages.ERROR_TEXT)));
      // act
      var result = await sut('test');
      // asset
      expect(result.fold(id, id), isA<ErrorText>());
    });

    test('Should return a empty', () async {
      // arrange
      when(_repository(any)).thenAnswer((_) async => Right(mockRepo));
      // act
      var result = await sut('');
      // asset
      expect(result.fold(id, id), isA<ErrorRequiredText>());
    });
  });
}
