// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class buttonCert extends StatelessWidget {
  final String nomeDoBotao;
  final String rota;

  const buttonCert({
    super.key,
    required this.nomeDoBotao,
    required this.rota,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            height: 80,
            width: 120,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 159, 5, 1),
                borderRadius: BorderRadius.circular(25)),
            alignment: Alignment.center,
            child: Text(
              nomeDoBotao,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
        )),
        onTap: () {
          //TODO fazer a verificação

          //passa para rota desejada
          Navigator.of(context).pushNamed(rota);
        });
  }
}
