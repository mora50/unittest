import 'package:dartz/dartz.dart';
import 'package:unittest/modules/search/domain/entities/repo_entity.dart';
import 'package:unittest/modules/search/domain/errors/errors.dart';

abstract class SearchRepository {
  Future<Either<ErrorText, List<RepoEntity>>> call(String text);
}
