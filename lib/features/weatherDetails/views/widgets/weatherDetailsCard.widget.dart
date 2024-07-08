import 'package:flutter/material.dart';
import 'package:weatherdetails/utils/themes/widgets/text.theme.dart';

import '../../../../utils/constants/colors.constant.dart';
import '../../../../utils/constants/weather_icons.dart';
import 'commonIcons.widget.dart';

class WeatherCardDetails extends StatelessWidget {
  const WeatherCardDetails({super.key, required this.humidity, required this.windSpeed, required this.description});
  final String humidity;
  final String windSpeed;
  final String description;

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Row(
          children: [
            CommonWeatherIcons(iconData: WeatherIcons.humidity),
            const SizedBox(
              width: 10,
            ),
            Text('Humidity', style: WTextTheme.customTextTheme.titleMedium,),
            const Spacer(),
            Text(humidity, style: WTextTheme.customTextTheme.titleSmall,)
          ],
        ),
        const Divider(
          thickness: 1,
          color: WColors.dividerColor,
        ),
        Row(
          children: [
            CommonWeatherIcons(iconData: WeatherIcons.wind),
            const SizedBox(
              width: 10,
            ),
            Text('Wind', style: WTextTheme.customTextTheme.titleMedium,),
            const Spacer(),
            Text(windSpeed, style: WTextTheme.customTextTheme.titleSmall,)
          ],
        ),
        const Divider(
          thickness: 1,
          color: WColors.dividerColor
          ,
        ),
        Row(
          children: [
            CommonWeatherIcons(iconData: WeatherIcons.temperature),
            const SizedBox(
              width: 10,
            ),
            Text('Description', style: WTextTheme.customTextTheme.titleMedium,),
            const Spacer(),
            Text(description, style: WTextTheme.customTextTheme.titleSmall,)
          ],
        )
      ],
    );
  }
}
