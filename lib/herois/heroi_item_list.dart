import 'package:flutter/material.dart';
import 'package:superapp/herois/heroi_detalhe.dart';
import 'package:superapp/model/heroi_item_model.dart';

class HeroiItemList extends StatelessWidget {
  final HeroiItemModel heroi;
  const HeroiItemList({required this.heroi});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HeroiDetalhe(heroi: heroi),
        ),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              heroi.imagem,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),
            Text(
              heroi.nome,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
