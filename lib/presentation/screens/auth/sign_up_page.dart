import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/extensions/ui_extensions.dart';
import 'package:todo_app/extensions/util_extension.dart';
import 'package:todo_app/presentation/screens/auth/sign_in_page.dart';
import '../../../application/auth/auth_block.dart';
import '../../../application/auth/events.dart';
import '../../core/constant.dart';
import '../../widgets/textfield_widget.dart';
import '../home.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  final _key = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                  return const SignInPage();
                }));
              },
              icon: "Already have account".text.small,
            ),
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
                            AuthEvents.signUp(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim()));
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const Home(),
                        //     ));
                      }
                    },
                    child: "SignUp".text,
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
