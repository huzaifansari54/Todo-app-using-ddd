import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModules {
  @lazySingleton
  Dio get dio => Dio(BaseOptions(
        receiveDataWhenStatusError: false,
        // receiveTimeout: const Duration(seconds: 1),
        validateStatus: (status) => status! < 500,
      ));

  @singleton
  @preResolve
  Future<SharedPreferences> get sharedPreferences async =>
      await SharedPreferences.getInstance();
}
