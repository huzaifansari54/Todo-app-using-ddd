import 'package:flutter/material.dart';

import '../core/constant.dart';

class TextFielWidget extends StatelessWidget {
  const TextFielWidget({
    super.key,
    required TextEditingController emailController,
    required this.hint,
    required this.obscure,
    required this.icon,
    this.validator,
  }) : _emailController = emailController;
  final String? Function(String?)? validator;
  final TextEditingController _emailController;
  final String hint;
  final bool obscure;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: size(context).width * .8,
        child: Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: kwhite, borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              validator: validator,
              controller: _emailController,
              obscureText: obscure,
              style: const TextStyle(
                color: bgColor,
              ),
              decoration: InputDecoration(
                  hintStyle: const TextStyle(color: bgColor, fontSize: 12),
                  hintText: hint,
                  suffixIcon: icon,
                  border: InputBorder.none),
            )));
  }
}

class BodyText extends StatelessWidget {
  const BodyText(
      {super.key,
      required this.controller,
      required this.hint,
      required this.icon,
      this.validator});

  final TextEditingController controller;
  final String hint;
  final Icon icon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        width: size(context).width * .8,
        child: Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: kwhite, borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              validator: validator,
              maxLength: 100,
              maxLines: 10,
              controller: controller,
              style: const TextStyle(
                color: bgColor,
              ),
              decoration: InputDecoration(
                  hintStyle: const TextStyle(color: bgColor),
                  hintText: hint,
                  border: InputBorder.none),
            )));
  }
}
