import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/extensions/ui_extensions.dart';
import 'package:todo_app/extensions/util_extension.dart';
import 'package:todo_app/presentation/core/constant.dart';
import 'package:todo_app/presentation/screens/home.dart';

import '../../../application/auth/auth_block.dart';
import '../../../application/auth/events.dart';
import '../../../application/todo/todo_bloc.dart';
import '../../widgets/textfield_widget.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
        ),
        body: Form(
          key: _key,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Spacer(),
            TextFielWidget(
                validator: (value) {
                  if (!(value != null &&
                      value.isValidEmail() &&
                      value.isNotEmpty)) {
                    return "Please fill correct email";
                  }
                  return null;
                },
                icon: const Icon(
                  Icons.email,
                  color: bgColor,
                ),
                hint: "Email",
                obscure: false,
                emailController: _emailController),
            TextFielWidget(
                validator: (value) {
                  if (value!.length < 6) {
                    return "password should be 6 digit";
                  }
                  return null;
                },
                icon: const Icon(
                  Icons.password,
                  color: bgColor,
                ),
                hint: "password",
                obscure: true,
                emailController: _passwordController),
            const Spacer(
              flex: 3,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    color: kbgColor,
                    onPressed: () {
                      if (!_key.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (context) => const SimpleDialog(
                                  contentPadding: EdgeInsets.all(20),
                                  title: Text('Please check the form'),
                                  children: [
                                    Text(
                                        'Some details are missing or incorrect. Please check the details and try again.')
                                  ],
                                ));
                      } else {
                        ref.read(authBloc.notifier).eventToState(
                            AuthEvents.signIn(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim()));
                        Navigator.pop(context);
                      }
                    },
                    child: "SignIn".text,
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ]),
        ),
      ),
    );
  }
}
