// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:try1/components/buttonCert.dart';
import 'package:try1/components/myTextBox.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final userName = TextEditingController();
  final password = TextEditingController();
  final emailName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(4, 118, 215, 1),
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(3, 62, 140, 1),
                  Color.fromRGBO(4, 118, 215, 1),
                  Color.fromRGBO(32, 128, 212, 1),
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.app_registration,
                  size: 120,
                  color: Colors.black87,
                ),
                const Text(
                  'Register',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                myTextBox(
                  hintText: 'Nome',
                  obscure: false,
                  controller: userName,
                  iconne: const Icon(
                    Icons.person_add,
                    color: Color.fromRGBO(242, 159, 5, 1),
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                myTextBox(
                  hintText: 'Email',
                  obscure: false,
                  controller: emailName,
                  iconne: const Icon(
                    Icons.email,
                    color: Color.fromRGBO(242, 159, 5, 1),
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                myTextBox(
                  hintText: 'Senha',
                  obscure: true,
                  controller: password,
                  iconne: const Icon(
                    Icons.key,
                    color: Color.fromRGBO(242, 159, 5, 1),
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const buttonCert(
                  nomeDoBotao: 'Registrar',
                  rota: '/pages/home.dart',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
