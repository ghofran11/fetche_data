import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';
import '../bloc/user_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("fetch user"),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
         if(state is UserLoading){
           return const Center(
             child: CircularProgressIndicator(),
           );
         }
          if (state is UserLoaded) {
            final user=state.user;
            return Column(
              children: const [
              // Text(user),
                // Text('data'),
                // Text('data'),
              ],
            );
          }
          if(state is UserError){
            return Center(
              child: Text(state.message),
            );
          }
          return Center(
            child: FloatingActionButton(
              onPressed: () {
                context.read<UserBloc>().add(UserFetched());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );

        },
      ),
    );
  }
}
