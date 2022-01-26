import 'dart:convert';
//import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:nweather_easyaproch_var1/data/model.dart';

class HttpService {


  Future<WeatherModel> getRequest() async {
    const url = 'https://api.openweathermap.org/data/2.5/weather?appid=1f5b6a93123833fd32511e7ffbeebf4b&q=London';
    //final city = "London";
    try {
      var response = await http.get(Uri.parse(url));
      log('request: ${url.toString()}');
      var jsonResult = json.decode(response.body);
      //print (response.body);
      return WeatherModel.fromJson(jsonResult);

    } on Exception {
      rethrow;
    }


  }
}