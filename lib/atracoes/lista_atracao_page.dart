import 'package:flutter/material.dart';

class ListaAtracaoPage extends StatefulWidget {
  const ListaAtracaoPage({super.key});

  @override
  _ListaAtracaoPageState createState() => _ListaAtracaoPageState();
}

class _ListaAtracaoPageState extends State<ListaAtracaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Lista Atrações"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: const Center(),
    );
  }
}
