// ignore_for_file: file_names, prefer_typing_uninitialized_variables, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:try1/components/useBotton.dart';

class dialogTripBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  dialogTripBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromRGBO(4, 117, 215, 0.507),
      content: SizedBox(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //pega o nome da viagem
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Para aonde será a viagem?",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(242, 242, 242, 1),
                  ),
                ),
              ),

              // save and cancel bottom
              Row(
                children: [
                  useBotton(text: 'Save', onPressed: onSave),
                  const SizedBox(
                    width: 5,
                  ),
                  useBotton(text: 'Cancel', onPressed: onCancel),
                ],
              )
            ],
          )),
    );
  }
}
