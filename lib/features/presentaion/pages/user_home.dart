import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/features/presentaion/bloc/user_bloc.dart';
import 'package:test_bloc/features/presentaion/bloc/user_event.dart';
import 'package:test_bloc/features/presentaion/bloc/user_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("fetch user"),
        ),
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is UserLoaded) {
              return Column(
                children: const [
                  // Text(state.),
                  // Text('data'),
                  // Text('data'),
                ],
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
