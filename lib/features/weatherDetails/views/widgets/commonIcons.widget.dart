import 'package:flutter/material.dart';
import 'package:weatherdetails/utils/constants/weather_icons.dart';

class CommonWeatherIcons extends StatelessWidget {
  CommonWeatherIcons({super.key, required this.iconData});
  IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Icon(iconData, color: const Color(0xFF3B3B54), size: 25,)
    ;
  }
}
