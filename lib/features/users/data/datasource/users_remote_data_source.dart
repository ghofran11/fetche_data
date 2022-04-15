
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:test_bloc/core/error/server_error.dart';
import 'package:test_bloc/features/users/domain/entity/user.dart';

import '../models/users/users_model.dart';

abstract class UserRemoteData{
   Future<Either<List<User>,ServerError>> getUser();
}

class UserRemoteDataImpl implements UserRemoteData{
  @override
  Future<Either<List<User>,ServerError>> getUser() async {
    // TODO: implement getUser
    Dio dio =Dio();
    final response =await dio.get('https://jsonplaceholder.typicode.com/users');
    if(response.statusCode==200)
    {
      final usersModel = userFromJson(json.encode(response.data));
      final user=convertModelToEntity(usersModel,response);
      return Left(user) ;
    }
    return Right(ServerError('error fetching user'));
  }

  List<User> convertModelToEntity(List<UserModel> usersModel,final response) {
    var transactions = response.data['name']['email'];
    var _transactions = transactions.map((e) => UserModel.fromJson(e)).toList();
    return _transactions;
  }


}