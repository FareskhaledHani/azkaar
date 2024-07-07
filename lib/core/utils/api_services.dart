import 'dart:convert';

import 'package:dio/dio.dart';

class ApiServices {
  final _endPoint =
      'https://raw.githubusercontent.com/Alsarmad/Adhkar-json/main/adhkar.json';
  final Dio _dio;
  final _elsalahTimesEndPoint = 'https://muslimsalat.p.rapidapi.com/cairo.json';
  final apiKey ='f5d48627femsh794bf46379f9d0cp12bf27jsn2013915d0d21';
  ApiServices(this._dio);
  Future<List<Map<String, dynamic>>> getElazkar() async {
    var respond = await _dio.get('$_endPoint');
    List<Map<String,dynamic>> azkarData= List<Map<String,dynamic>>.from(jsonDecode(respond.data));
    print(respond.data);
    return azkarData;
  }

  Future<Map<String,dynamic>> getElsalahTimes() async {
    var respond = await _dio.get('$_elsalahTimesEndPoint',options: Options(
      headers: {'X-RapidAPI-Key': apiKey})
    );
    print(respond.data);
    return respond.data['items'][0];
  }
}
