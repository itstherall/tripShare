// ignore_for_file: file_names
import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class useBotton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  useBotton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: const Color.fromRGBO(242, 159, 5, 1),
      child: Text(text),
    );
  }
}
