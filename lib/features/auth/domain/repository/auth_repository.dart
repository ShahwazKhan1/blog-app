import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, String>> signInWithEmailPassword({
    required String email,
    required String password,
  });
}