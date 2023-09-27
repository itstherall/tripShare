// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class tripDescrip extends StatefulWidget {
  const tripDescrip({
    super.key,
  });

  @override
  State<tripDescrip> createState() => _tripDescripState();
}

class _tripDescripState extends State<tripDescrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Configurar'),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        //TODO!
        body: Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(10),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text('Local:'),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Data:'),
                  ],
                ),
              ),
              Icon(
                Icons.location_city,
                size: 100,
              ),
            ],
          ),
        ));
  }
}
