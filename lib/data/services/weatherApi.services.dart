import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherdetails/features/weatherDetails/models/weather.model.dart';
import '../../utils/constants/weatherApi.constants.dart';

class WeatherApiServices {

     Future<WeatherModel> getCurrentWeatherFromCityName(String city) async{
    String weatherUrl = "${WeatherAPIConstants.baseURL}&appid=${WeatherAPIConstants.API_KEY}&q=$city";
    final res = await http.get(Uri.parse(weatherUrl));
    var resBody = res.body;
    if(res.statusCode == 200) {
      return WeatherModel.fromJson(json.decode(resBody));
    }
    throw Exception();
  }
}