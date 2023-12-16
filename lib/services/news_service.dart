import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticalModel>> getnews({required String category}) async {
    try {
  var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=41ed22031229482f9d72c7e253006c30&category=$category');
  
  Map<String, dynamic> jsonData = response.data;
  
  List<dynamic> artical = jsonData['articles'];
  
  List<ArticalModel> articlList = [];
  
  for (var articale in artical) {
    ArticalModel articalModel = ArticalModel.fromJson(articale);
        articlList.add(articalModel);
  }
  
  return articlList;
}  catch (e) {
  return [];
}

  }
}
