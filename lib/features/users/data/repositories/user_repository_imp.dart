import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:either_dart/either.dart';
import 'package:test_bloc/core/error/server_error.dart';

import '../../domain/entity/user.dart';
import '../../domain/repository/user_repository.dart';
import '../datasource/users_remote_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  late UserRemoteData getUserRemoteData;

  @override
  Future<Either<List<User>,ServerError>> fetchUser() async {
    // TODO: implement getAllUser
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile &&
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.or wifi
      return getUserRemoteData.getUser();
    } else {
      return Right(ServerError('check your internet'));
    }

    throw UnimplementedError();
  }
}
