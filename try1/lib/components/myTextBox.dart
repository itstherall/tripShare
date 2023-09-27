// ignore_for_file: file_names, camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class myTextBox extends StatelessWidget {
  final controller;
  final bool obscure;
  final String hintText;
  final Icon iconne;
  const myTextBox({
    super.key,
    required this.hintText,
    required this.obscure,
    required this.controller,
    required this.iconne,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          icon: iconne,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          fillColor: const Color.fromRGBO(242, 242, 242, 1),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
