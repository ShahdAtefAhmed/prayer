import 'package:dio/dio.dart';
import '../Models/Prayer_Time_model.dart';

class PrayerTimeService{
  static Dio dio = Dio();
  static Future<Prayer_Time_model>getprayerTimes()async{
    try{
      const Url =
          'http://api.aladhan.com/v1/timings?city=Giza&country=Egypt';
      final response = await dio.get(Url);
      if(response.statusCode ==200)
      {
        return Prayer_Time_model.fromjson(
          response.data,
        );
      }
      else
      {
        throw Exception('Failed to load prayer times');
      }
    }
    catch(e)
    {
      print('Error:$e');
      throw Exception('Error Fatching Prayer Times');
    }
  }
}