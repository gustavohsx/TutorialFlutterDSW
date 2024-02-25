import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Map<String, String> args;

  @override
  Widget build(BuildContext context) {
    try {
      args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    } catch (e) {
      args = {
        'email': 'Login Não Realizado',
        'password': 'Login Não Realizado'
      };
    }

    return Scaffold(
      primary: true,
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: [
              Text('Email: ${args['email']}'),
              Text('Senha: ${args['password']}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/login');
                },
                child: const Text('Fazer Login'),
              ),
            ],
          ),
        ),
      ),
      drawer: const Drawer(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text('Menu'),
        ),
      ),
    );
  }
}
