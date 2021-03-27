import 'package:ramadan_tutorial/model/date_model.dart';
import 'package:ramadan_tutorial/model/time_model.dart';

class DateTimeModel {
  DateModel _dateModel;
  TimeModel _timeModel;

  DateTimeModel.parseJson(data){
    _timeModel = data['times'] ? data['times'] : null;
    _dateModel = data['dates'] ? data['dates'] : null;
    _timeModel = data['times'] != null ? TimeModel.parseJson(data['times']) : null;
    _dateModel = data['dates'] != null ? DateModel.parseJson(data['dates']) : null;
  }

  DateModel get dates => _dateModel;
  TimeModel get times => _timeModel;
}