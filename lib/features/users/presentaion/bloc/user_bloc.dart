import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/user_repository_imp.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    UserRepositoryImpl userRepositoryImpl = UserRepositoryImpl();

    on<UserFetched>((event, emit) async {
      emit(UserLoading());
      try {
        final user = userRepositoryImpl.fetchUser();
        emit(UserLoaded(user: user));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}
