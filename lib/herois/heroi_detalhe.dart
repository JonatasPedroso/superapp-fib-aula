import 'package:flutter/material.dart';
import 'package:superapp/model/heroi_item_model.dart';

class HeroiDetalhe extends StatelessWidget {
  final HeroiItemModel heroi;
  const HeroiDetalhe({required this.heroi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(heroi.nome),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: Column(
        children: [
          Image.network(
            heroi.imagem,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              heroi.nome,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
