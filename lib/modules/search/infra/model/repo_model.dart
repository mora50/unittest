import '../../domain/entities/repo_entity.dart';

class RepoModel extends RepoEntity {
  RepoModel(int number, String fullname) : super(number, fullname);

  factory RepoModel.fromMap(Map<String, dynamic> map) {
    return RepoModel(
      map['number']?.toInt() ?? 0,
      map['fullname'] ?? '',
    );
  }
}
