import 'package:flutter/material.dart';
import 'package:superapp/api/api_service.dart';

class ListaHeroiPage extends StatefulWidget {
  const ListaHeroiPage({super.key});

  @override
  _ListaHeroiPageState createState() => _ListaHeroiPageState();
}

class _ListaHeroiPageState extends State<ListaHeroiPage> {
  @override
  void initState() {
    super.initState();
    ApiService().fetchHerois();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Lista Heróis"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: const Center(),
    );
  }
}
