import 'package:dio/dio.dart';
import 'package:news_app_ui_21/features/main/data/models/news_api_model.dart';

import 'api.dart';

class NewsService {
  final Dio dio = Dio();
  Future<NewsApiModel?> fetchData() async {
    final response = await dio.get(Api.data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = response.data;
      return NewsApiModel.fromJson(data);
    }
    return null;
  }
}
