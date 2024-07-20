import 'package:flutter/material.dart';
import 'package:superapp/menu/grid_item.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Menu"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            5,
            (index) {
              return GridItem(
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }
}
