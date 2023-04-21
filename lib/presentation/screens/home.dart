import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/application/auth/auth_block.dart';
import 'package:todo_app/presentation/screens/auth/sign_up_page.dart';
import 'package:todo_app/presentation/screens/todo/todo_page.dart';

import '../../application/todo/todo_bloc.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authBloc);

    return auth.when(intial: () {
      return const SignUpPage();
    }, unautherised: () {
      return const SignUpPage();
    }, autherised: (uid) {
      return TodoPage(uid);
    }, failures: (a) {
      return Scaffold(
        body: Center(
            child: Text(a.maybeWhen(
          orElse: () {
            return "unknown error";
          },
          server: (s) {
            return "server error";
          },
          timeout: () {
            return "timeout";
          },
          internetConnectionOut: () {
            return "internetConnectionOut check intenet";
          },
          failedToSign: () {
            return "failedToSign";
          },
        ))),
      );
    });
  }
}
