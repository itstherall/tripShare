// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class registerBotton extends StatefulWidget {
  const registerBotton({
    super.key,
  });

  @override
  State<registerBotton> createState() => _registerBottonState();
}

class _registerBottonState extends State<registerBotton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          height: 20,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(25)),
          alignment: Alignment.center,
          child: const Text(
            'Register Now!',
            style: TextStyle(
              color: const Color.fromRGBO(242, 159, 5, 1),
            ),
          ),
        ),
      )),
      onTap: () {
        Navigator.of(context).pushNamed('/pages/register.dart');
      },
    );
  }
}
