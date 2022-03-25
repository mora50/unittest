import 'package:dartz/dartz.dart';
import 'package:unittest/modules/search/domain/entities/repo_entity.dart';
import 'package:unittest/modules/search/domain/errors/errors.dart';
import 'package:unittest/modules/search/domain/errors/messages.dart';
import 'package:unittest/modules/search/domain/repositories/search_repository.dart';

abstract class ISearchByText {
  Future<Either<Error, List<RepoEntity>>> call(String text);
}

class SearchByText implements ISearchByText {
  final SearchRepository _repository;

  SearchByText(this._repository);

  @override
  Future<Either<Error, List<RepoEntity>>> call(String text) async {
    if (text.isEmpty) {
      return Left(ErrorRequiredText(ErrorMessages.EMPTY_TEXT));
    }

    return await _repository(text);
  }
}
