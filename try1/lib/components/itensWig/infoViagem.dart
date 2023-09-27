// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
//import 'package:try1/models/viagem.dart';

class infoViagem extends StatefulWidget {
  //final Viagem viagemInfo;

  const infoViagem({
    super.key,
    //required this.viagemInfo
  });

  @override
  State<infoViagem> createState() => _infoViagemState();
}

class _infoViagemState extends State<infoViagem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
          width: 180,
          height: 100,
          child: Image.asset(
            '/images/locazacao.png',
            width: 150,
            height: 150,
          ),
        ),
      ],
    );
  }
}
