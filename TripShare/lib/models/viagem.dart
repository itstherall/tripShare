import 'package:flutter/material.dart';

class Viagem extends StatelessWidget {
  final String nomeDaViagem;
  final void Function()? onTap;

  const Viagem({
    super.key,
    required this.nomeDaViagem,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: const Color.fromRGBO(242, 159, 5, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            children: [
              Container(
                width: 150,
                height: 80,
                child: Center(
                  child: Text(nomeDaViagem),
                ),
              ),
              //nome da viagem
            ],
          ),
        ),
      ),
    );
  }
}
