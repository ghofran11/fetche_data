import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/features/data/repositories/get_user_repository_imp.dart';
import 'package:test_bloc/features/presentaion/bloc/user_event.dart';
import 'package:test_bloc/features/presentaion/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent,UserState>
{
  UserBloc() : super(UserInitial()){
    GetUserRepositoryImpl getUserRepositoryImpl=GetUserRepositoryImpl();

    on<FetchUserEvent>((event,emit) async{
      emit(UserLoading());
      final user=getUserRepositoryImpl.getAllUser();
      emit(UserLoaded(user));
    }
    );
  }


}