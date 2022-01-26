import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
//import 'package:nweather_easyaproch_var1/data/model.dart';

class HttpService {
  Future<List<dynamic>> fetchWeather() async {
    var city = 'London';
    var param = { 'q': city};
    var uri  = Uri.http('api.openweathermap.org/data/2.5/weather?appid=1f5b6a93123833fd32511e7ffbeebf4b', param.toString());

    try {
      var response = await http.get(uri);

      log('request: ${uri.toString()}');
      return jsonDecode(response.body) as List;


    } on Exception {
      rethrow;
    }
  }
}

//var jsonResult = json.decode(response.body);
//print (response.body);
//return WeatherModel.fromJson(jsonResult);