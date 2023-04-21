import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/injectable/configure.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureDependency() async => getIt.init();
