import 'package:flutter/material.dart';
import 'package:superapp/camera/camera_page.dart';
import 'package:superapp/star_wars/lista_star_wars_page.dart';
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
      Icons.camera_alt,
    ];

    List<String> tituloDaLista = [
      "Listagem de Herois",
      "Inteligência Artificial",
      "Star Wars",
      "Criar Atracao",
      "Camera",
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

    void listagemStarWars() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ListaStarWarsPage(),
          ));
    }

    void criarAtracao() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CriarAtracaoPage(),
          ));
    }

    void criarCamera() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CameraPage(),
          ));
    }

    return GestureDetector(
      onTap: () => {
        switch (index) {
          0 => listagemHerois(),
          1 => inteligenciaArtificial(),
          2 => listagemStarWars(),
          3 => criarAtracao(),
          4 => criarCamera(),
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
              color: Colors.white,
            ),
            Text(
              titulo,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
