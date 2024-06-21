import 'package:dartz/dartz.dart';
import 'package:student_management_starter/core/failure/failure.dart';
import 'package:student_management_starter/features/auth/domain/entity/auth_entity.dart';
import 'package:student_management_starter/features/auth/domain/repository/authLocalDataSourceProvider.dart';
import 'package:student_management_starter/features/auth/domain/repository/i_auth_repository.dart';

class AuthLocalRepository implements IAuthRepository {
  final AuthLocalDataSource authLocalDataSource;

  AuthLocalRepository({required this.authLocalDataSource});

  @override
  Future<Either<Failure, bool>> registerUser(AuthEntity user) async {
    try {
      // Implement registration logic here
      return Right(true);
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> loginUser(String email, String password) async {
    try {
      // Implement login logic here
      return Right(true);
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }
}
