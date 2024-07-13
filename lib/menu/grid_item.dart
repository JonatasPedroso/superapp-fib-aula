import 'package:flutter/material.dart';
import 'package:superapp/atracoes/lista_atracao_page.dart';
import 'package:superapp/criar_atracoes/criar_atracao_page.dart';
import 'package:superapp/herois/lista_heroi_page.dart';
import 'package:superapp/ia/ia_gera_page.dart';

class GridItem extends StatelessWidget {
  final int index;

  const GridItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    List<IconData> listaDeIcones = [
      Icons.flash_on,
      Icons.computer_rounded,
      Icons.museum,
      Icons.camera,
    ];

    List<String> tituloDaLista = [
      "Listagem de Herois",
      "Inteligência Artificial",
      "Atrações Turísticas",
      "Criar Atracao",
    ];

    IconData iconData = listaDeIcones[index];
    String titulo = tituloDaLista[index];

    void listagemHerois() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ListaHeroiPage(),
          ));
    }

    void inteligenciaArtificial() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const IaGeraPage(),
          ));
    }

    void atracoesTuristicas() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ListaAtracaoPage(),
          ));
    }

    void criarAtracao() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CriarAtracaoPage(),
          ));
    }

    return GestureDetector(
      onTap: () => {
        switch (index) {
          0 => listagemHerois(),
          1 => inteligenciaArtificial(),
          2 => atracoesTuristicas(),
          3 => criarAtracao(),
          _ => print("OPCAO INVALIDA"),
        }
      },
      child: Card(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 40,
            ),
            Text(titulo),
          ],
        ),
      ),
    );
  }
}
