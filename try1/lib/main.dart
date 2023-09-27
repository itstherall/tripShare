import 'package:flutter/material.dart';
import 'package:try1/components/buttonCert.dart';
//import 'package:try1/components/itensWig/infoViagem.dart';
import 'package:try1/components/myTextBox.dart';
import 'package:try1/components/registerBotton.dart';
import 'package:try1/pages/home.dart';
import 'package:try1/pages/register.dart';
import 'package:try1/pages/tripDescrip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        //"/": (context) => const MyApp(),
        "/pages/home.dart": (context) => const home(),
        "/pages/tripDescrip.dart": (context) => const tripDescrip(),
        "/pages/register.dart": (context) => const register(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final userName = TextEditingController();
  final password = TextEditingController();

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
                  Icons.person,
                  size: 120,
                  color: Colors.black87,
                ),
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                myTextBox(
                  hintText: 'Usuário',
                  obscure: false,
                  controller: userName,
                  iconne: const Icon(
                    Icons.person,
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
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),

                    //botoa de registrar
                    registerBotton(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const buttonCert(
                  nomeDoBotao: 'Entrar',
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
