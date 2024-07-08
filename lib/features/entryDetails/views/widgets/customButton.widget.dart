import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherdetails/utils/themes/widgets/text.theme.dart';

import '../../../weatherDetails/controllers/weather_controller.dart';
import '../../../weatherDetails/views/weatherDetails.screen.dart';
import '../../controllers/textField_controller.dart';

class CustomSearchButton extends StatelessWidget {
  final WeatherController controller = Get.put(WeatherController());
  TextFieldController textController = Get.find();

  CustomSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF9C3FE4), Color(0xFFC65647)],
        ),
      ),
      child: MaterialButton(
        height: 50,
        minWidth: 314,
        onPressed: () async {
          await controller
              .getCurrentWeather(textController.textEditingController.text);
          Get.to(() => const WeatherDetails());
        },
        child: Center(
          child: Text(
            'SEARCH',
            style: WTextTheme.customTextTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
