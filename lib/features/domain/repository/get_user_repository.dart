import '../entity/get_user.dart';

abstract class GetUserRepository{

  Future<GetUser> getAllUser();

}