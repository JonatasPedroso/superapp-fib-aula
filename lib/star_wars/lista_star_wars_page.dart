import 'package:flutter/material.dart';
import 'package:superapp/api/api_service.dart';
import 'package:superapp/model/start_wars_item_model.dart';
import 'package:superapp/star_wars/star_wars_item_list.dart';

class ListaStarWarsPage extends StatefulWidget {
  const ListaStarWarsPage({super.key});

  @override
  _ListaStarWarsPageState createState() => _ListaStarWarsPageState();
}

class _ListaStarWarsPageState extends State<ListaStarWarsPage> {
  late Future<List<StarWarsItemModel>> futureStarWars;

  @override
  void initState() {
    super.initState();
    futureStarWars = ApiService().fetchStarWars();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Lista Star Wars"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: FutureBuilder(
        future: futureStarWars,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Erro'));
          }
          return ListView.separated(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => StarWarsItemList(
              starWars: snapshot.data![index],
              index: index,
            ),
            separatorBuilder: (context, index) => const Divider(),
          );
        },
      ),
    );
  }
}
