import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'features/data/models/get_users_model.dart';
import 'features/presentaion/pages/user_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}
