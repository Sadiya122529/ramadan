import 'package:ramadan_tutorial/model/main_model.dart';
import 'package:ramadan_tutorial/persistance/repository.dart';
import 'package:rxdart/rxdart.dart';

class PrayBloc {
  Repository _repository = Repository();
  final _prayFetcher = PublishSubject<MainModel>();

  Stream<MainModel> get praytime => _prayFetcher.stream;

  fetchPrayTime({String city, String date}) async {
    MainModel data = await _repository.fetchPrayTime(city: city, date: date);
    _prayFetcher.sink.add(data);
  }

  dispose() {
    _prayFetcher.close();
  }
}

final prayBloc = PrayBloc();
