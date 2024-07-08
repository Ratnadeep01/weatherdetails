import 'package:get/get.dart';
import '../../../data/services/weatherApi.services.dart';
import '../models/weather.model.dart';

class WeatherController extends GetxController{
  var weatherDetails = WeatherModel().obs;

  Future<void> getCurrentWeather(String city) async{
    try {
      weatherDetails.value = await WeatherApiServices().getCurrentWeatherFromCityName(city);
    }catch(e) {
      print("Error: $e");
    }

  }
  
}
