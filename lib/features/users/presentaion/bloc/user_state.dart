import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:test_bloc/core/error/server_error.dart';

import '../../domain/entity/user.dart';

abstract class UserState {
  const UserState();
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
Future<Either<List<User>,ServerError>> user;
   UserLoaded({required this.user});
}

class UserError extends UserState {
  final String message;

  const UserError(this.message);
}
