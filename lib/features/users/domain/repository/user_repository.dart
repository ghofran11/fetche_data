import 'package:either_dart/either.dart';
import 'package:test_bloc/core/error/server_error.dart';

import '../entity/user.dart';

abstract class UserRepository{
  Future<Either<List<User>,ServerError>> fetchUser();
}