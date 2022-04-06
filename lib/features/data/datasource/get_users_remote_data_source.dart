
import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/get_users_model.dart';

abstract class GetUserRemoteData{
   Future getUser();
}

class GetUserRemoteDataImp implements GetUserRemoteData{
  @override
  Future<List<User>> getUser() async {
    // TODO: implement getUser
    Dio dio =Dio();
    final response =await dio.get('https://jsonplaceholder.typicode.com/users');
    final users = userFromJson(json.encode(response.data));
    return users;

    throw UnimplementedError();
  }


}