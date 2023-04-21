// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter_riverpod/flutter_riverpod.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;
import 'package:todo_app/application/auth/auth_block.dart' as _i3;
import 'package:todo_app/application/todo/todo_bloc.dart' as _i7;
import 'package:todo_app/application/todo/todo_watcher/todo_watcher_bloc.dart'
    as _i10;
import 'package:todo_app/domain/auth/i_auth_faced.dart' as _i4;
import 'package:todo_app/domain/todo/i_todo_Repository.dart' as _i9;
import 'package:todo_app/infrastructure/API/api_service.dart' as _i11;
import 'package:todo_app/infrastructure/API/auth_api_service.dart' as _i12;
import 'package:todo_app/infrastructure/auth/auth_service.dart' as _i13;
import 'package:todo_app/infrastructure/todo/todo_repository.dart' as _i14;
import 'package:todo_app/injectable/module/module.dart' as _i15;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModules = _$RegisterModules();
    gh.factory<_i3.AuthBloc>(
        () => _i3.AuthBloc(iauthFaced: gh<_i4.IauthFaced>()));
    gh.lazySingleton<_i5.Dio>(() => registerModules.dio);
    await gh.singletonAsync<_i6.SharedPreferences>(
      () => registerModules.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i7.TodoBloc>(() => _i7.TodoBloc(
          gh<_i8.Ref<Object?>>(),
          iTodoRepository: gh<_i9.ITodoRepository>(),
        ));
    gh.factory<_i10.TodoWatcherBloc>(
        () => _i10.TodoWatcherBloc(todoRepository: gh<_i9.ITodoRepository>()));
    gh.singleton<_i11.ApiService>(_i11.ApiService(dio: gh<_i5.Dio>()));
    gh.singleton<_i12.AuthApiService>(_i12.AuthApiService(
      dio: gh<_i5.Dio>(),
      db: gh<_i6.SharedPreferences>(),
    ));
    gh.factory<_i13.AuthService>(
        () => _i13.AuthService(authApiService: gh<_i12.AuthApiService>()));
    gh.factory<_i14.TodoRepository>(
        () => _i14.TodoRepository(apiService: gh<_i11.ApiService>()));
    return this;
  }
}

class _$RegisterModules extends _i15.RegisterModules {}
