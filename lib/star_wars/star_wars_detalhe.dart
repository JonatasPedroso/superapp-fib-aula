import 'package:flutter/material.dart';
import 'package:superapp/model/start_wars_item_model.dart';

class StarWarsDetalhe extends StatelessWidget {
  final StarWarsItemModel starWars;
  const StarWarsDetalhe({required this.starWars});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(starWars.nome),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              starWars.imagem,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              starWars.nome,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Descrição: Aqui ira uma descrição",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
