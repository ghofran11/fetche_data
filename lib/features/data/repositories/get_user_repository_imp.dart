import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:test_bloc/features/domain/entity/get_user.dart';
import 'package:test_bloc/features/domain/repository/get_user_repository.dart';

import '../datasource/get_users_remote_data_source.dart';

class GetUserRepositoryImpl implements GetUserRepository{

  late GetUserRemoteData getUserRemoteData;
  @override
  Future<GetUser> getAllUser() async{
    // TODO: implement getAllUser
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile && connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network.or wifi
      //return getUserRemoteData.getUser();

    }






    throw UnimplementedError();
  }

}