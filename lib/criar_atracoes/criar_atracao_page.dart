import 'package:flutter/material.dart';

class CriarAtracaoPage extends StatefulWidget {
  const CriarAtracaoPage({super.key});

  @override
  _CriarAtracaoPageState createState() => _CriarAtracaoPageState();
}

class _CriarAtracaoPageState extends State<CriarAtracaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Criar Atração"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: const Center(),
    );
  }
}
