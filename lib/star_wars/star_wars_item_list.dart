import 'package:flutter/material.dart';
import 'package:superapp/model/start_wars_item_model.dart';
import 'package:superapp/star_wars/star_wars_detalhe.dart';

class StarWarsItemList extends StatelessWidget {
  final StarWarsItemModel starWars;
  final int index;
  const StarWarsItemList({required this.starWars, required this.index});

  @override
  Widget build(BuildContext context) {
    List<Widget> rowLeftImageChildren = [
      Image.network(
        starWars.imagem,
        width: 180,
        height: 180,
        fit: BoxFit.cover,
      ),
      const SizedBox(width: 16),
      Text(
        starWars.nome,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ];

    List<Widget> rowRightImageChildren = [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Text(
            starWars.nome,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Image.network(
        starWars.imagem,
        width: 180,
        height: 180,
        fit: BoxFit.cover,
      ),
    ];

    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StarWarsDetalhe(starWars: starWars),
        ),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children:
              index % 2 == 0 ? rowLeftImageChildren : rowRightImageChildren,
        ),
      ),
    );
  }
}
