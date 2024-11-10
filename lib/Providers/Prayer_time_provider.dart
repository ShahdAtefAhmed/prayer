import 'package:flutter/cupertino.dart';
import '../Models/Prayer_Time_model.dart';
import '../Services/Payer_Time_Services.dart';

class PrayerTimeProvider with ChangeNotifier{
  Prayer_Time_model? prayerTime;

  Future<void> fatchPrayerTime() async{
    prayerTime = await PrayerTimeService.getprayerTimes();
    notifyListeners();
  }
}