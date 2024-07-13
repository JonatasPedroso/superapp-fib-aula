import 'package:flutter/material.dart';

class IaGeraPage extends StatefulWidget {
  const IaGeraPage({super.key});

  @override
  _IaGeraPageState createState() => _IaGeraPageState();
}

class _IaGeraPageState extends State<IaGeraPage> {
  final TextEditingController _tfImagemGerar = TextEditingController();

  void _gerarImagem() {
    print(_tfImagemGerar.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Gerar Imagem IA"),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.inverseSurface,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.try_sms_star_rounded,
                size: 100,
                color: Colors.green,
              ),
              TextField(
                controller: _tfImagemGerar,
                decoration: const InputDecoration(
                  labelText: "Digite o que voce deseja na imagem",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _gerarImagem,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  icon: const Icon(Icons.check),
                  label: const Text("Gerar Imagem"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
