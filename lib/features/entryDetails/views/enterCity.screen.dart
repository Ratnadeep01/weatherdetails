import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:weatherdetails/features/entryDetails/controllers/textField_controller.dart';
import 'package:weatherdetails/features/entryDetails/views/widgets/customButton.widget.dart';
import 'package:weatherdetails/features/entryDetails/views/widgets/customTextField.widget.dart';
import 'package:weatherdetails/utils/themes/widgets/text.theme.dart';
import '../../../utils/constants/colors.constant.dart';
import '../../weatherDetails/controllers/weather_controller.dart';
import '../../weatherDetails/views/weatherDetails.screen.dart';

class SearchCity extends StatelessWidget {
  SearchCity({super.key});
  final WeatherController controller = Get.put(WeatherController());



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: WColors.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: WColors.background,
        title:  Text('Enter City', style: WTextTheme.customTextTheme.titleLarge,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Enter City name to get weather details', style: WTextTheme.customTextTheme.headlineSmall,),
            CustomTextField(hint: 'Enter City name'),
            CustomSearchButton()
          ],
        ),
      ),
    );
  }
}