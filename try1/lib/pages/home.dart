// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:try1/components/dialogTripBox.dart';
import 'package:try1/models/viagem.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _controller = TextEditingController();

  List viagens = [
    ['Rio de Janeiro'],
    ['exemplo'],
  ];

  //salvando viagem
  void salvandoNovaViagem() {
    setState(() {
      viagens.add([_controller.text]);
      _controller.clear();
    });

    Navigator.of(context).pop();
  }

//criando novas viagens
  void createTrip() {
    showDialog(
        context: context,
        builder: (context) {
          return dialogTripBox(
            controller: _controller,
            onSave: salvandoNovaViagem,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(4, 118, 215, 1),
          title: const Text(
            'Lista de viagens',
            style: TextStyle(
              color: Color.fromRGBO(242, 242, 242, 1),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color.fromRGBO(4, 118, 215, 1),
          foregroundColor: const Color.fromRGBO(242, 242, 242, 1),
          onPressed: createTrip,
          child: const Icon(Icons.add),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: viagens.length,
            itemBuilder: (context, index) {
              return Viagem(
                nomeDaViagem: viagens[index][0],
                onTap: () {
                  Navigator.of(context).pushNamed('/pages/tripDescrip.dart');
                },
              );
            },
          ),
        ));
  }
}
