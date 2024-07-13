import 'package:flutter/material.dart';
import 'package:superapp/api/api_service.dart';
import 'package:superapp/herois/heroi_item_list.dart';
import 'package:superapp/model/heroi_item_model.dart';

class ListaHeroiPage extends StatefulWidget {
  const ListaHeroiPage({super.key});

  @override
  _ListaHeroiPageState createState() => _ListaHeroiPageState();
}

class _ListaHeroiPageState extends State<ListaHeroiPage> {
  late Future<List<HeroiItemModel>> futureHerois;

  @override
  void initState() {
    super.initState();
    futureHerois = ApiService().fetchHerois();
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
      body: FutureBuilder(
          future: futureHerois,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return const Center(child: Text('Erro'));
            }
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  HeroiItemList(heroi: snapshot.data![index]),
              separatorBuilder: (context, index) => const Divider(),
            );
          }),
    );
  }
}
