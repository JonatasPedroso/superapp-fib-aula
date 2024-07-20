import 'package:flutter/material.dart';
import 'package:superapp/api/api_service.dart';
import 'package:superapp/model/openai_data_model.dart';

class IaImagemGeradaPage extends StatefulWidget {
  final String prompt;

  const IaImagemGeradaPage({super.key, required this.prompt});

  @override
  // ignore: library_private_types_in_public_api
  _IaImagemGeradaPageState createState() => _IaImagemGeradaPageState();
}

class _IaImagemGeradaPageState extends State<IaImagemGeradaPage> {
  late Future<OpenaiGenerationsModel> _future;
  @override
  void initState() {
    super.initState();
    print(widget.prompt);
    _future = ApiService().fetchOpenAI(widget.prompt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Imagem Gerada"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Erro'));
          }

          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              snapshot.data!.data.url,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
