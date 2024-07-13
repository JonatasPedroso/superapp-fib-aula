class StarWarsItemModel {
  String id = "";
  String nome = "";
  String imagem = "";

  StarWarsItemModel(
      {required this.id, required this.nome, required this.imagem});

  factory StarWarsItemModel.fromJson(Map<String, dynamic> json) {
    return StarWarsItemModel(
      id: json['id'] as String,
      nome: json['nome'] as String,
      imagem: json['imagem'] as String,
    );
  }
}
