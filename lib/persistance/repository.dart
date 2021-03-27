import 'package:ramadan_tutorial/model/main_model.dart';
import 'package:ramadan_tutorial/persistance/api_provider.dart';

class Repository {
  ApiProvider _apiProvider = ApiProvider();
  Future<MainModel> fetchPrayTime({String city, String date}) =>
      _apiProvider.fetchPrayTime(city: city, date: date);
}