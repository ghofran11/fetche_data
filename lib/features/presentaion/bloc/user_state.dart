import 'package:equatable/equatable.dart';
import 'package:test_bloc/features/domain/entity/get_user.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoading extends UserState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class UserLoaded extends UserState {

final Future<GetUser> _getUser;

const  UserLoaded(this._getUser);

  @override
  // TODO: implement props
  List<Object?> get props => [_getUser];
}
class UserError extends UserState{
 final String? message;
  const UserError(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [];

}
