class OpenaiDataModel {
  String revisedPrompt = "";
  String url = "";

  OpenaiDataModel({required this.revisedPrompt, required this.url});

  factory OpenaiDataModel.fromJson(Map<String, dynamic> json) {
    return OpenaiDataModel(
        revisedPrompt: json["revised_prompt"] as String,
        url: json["url" as String]);
  }
}

class OpenaiGenerationsModel {
  late OpenaiDataModel data;

  OpenaiGenerationsModel({required this.data});

  factory OpenaiGenerationsModel.formJson(Map<String, dynamic> json) {
    var dataList = json["data"] as List;

    return OpenaiGenerationsModel(data: OpenaiDataModel.fromJson(dataList[0]));
  }
}
