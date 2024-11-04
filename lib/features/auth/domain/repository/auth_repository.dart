import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/common/enities/user.dart';
import 'package:fpdart/fpdart.dart';


abstract class AuthRepository {
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> signInWithEmailPassword({
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> currentUser();
}