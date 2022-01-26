
import 'package:nweather_easyaproch_var1/data/model.dart';
import 'http_from_api.dart';


class WeatherRepo {
  final HttpService httpService;
  WeatherRepo ({required this.httpService});

  //String? get city => null;
 final city = "London";
  Future<List<WeatherModel>> fetchWeather() async{
    final todosRaw = await httpService.getWeather(city!);
    return todosRaw.map((e) => WeatherModel.fromJson(e)).toList();
  }
}

   
  /*WeatherModel parsedJson(final response){
    final jsonDecoded = json.decode(response);

    final jsonWeather = jsonDecoded["main"];
    print (response.hashCode);
    return WeatherModel.fromJson(jsonWeather);*/
    //final result = Uri.parse("$baseUrl");


//var jsonResult = json.decode(response.body);
//print (response.body);
//return WeatherModel.fromJson(jsonResult);
//final baseUrl = "https://api.openweathermap.org/data/2.5/weather?q=Chicago&appid=1f5b6a93123833fd32511e7ffbeebf4b";