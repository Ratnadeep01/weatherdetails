
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherdetails/features/weatherDetails/controllers/weather_controller.dart';
import 'package:weatherdetails/features/weatherDetails/views/widgets/commonIcons.widget.dart';
import 'package:weatherdetails/features/weatherDetails/views/widgets/weatherDetailsCard.widget.dart';
import 'package:weatherdetails/utils/constants/colors.constant.dart';
import 'package:weatherdetails/utils/constants/weatherApi.constants.dart';
import 'package:weatherdetails/utils/constants/weather_icons.dart';
import 'package:weatherdetails/utils/themes/widgets/text.theme.dart';





class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WColors.background,
      appBar: AppBar(

        backgroundColor: WColors.background,
        title: Text('Weather Details', style: WTextTheme.customTextTheme.titleLarge,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage('assets/images/weather_body.png')),
              ),
                child:  Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  child: Obx((){
                    WeatherController controller = Get.find();
                    return Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.only(left: 0, right: 8, top: 8, bottom: 8),
                              child:  Icon(WeatherIcons.location, color: Color(0xFFFFFFFF)),
                            ),
                            Text("${controller.weatherDetails.value.name}", style: WTextTheme.customTextTheme.bodySmall,),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${controller.weatherDetails.value.main?.temp?.toInt().toString()}°c', style: WTextTheme.customTextTheme.headlineMedium,),
                            Text('${controller.weatherDetails.value.main?.tempMin?.toInt().toString()}°c / ${controller.weatherDetails.value.main?.tempMax?.toInt().toString()}°c', style: WTextTheme.customTextTheme.bodySmall,),
                            Text('${controller.weatherDetails.value.weather?[0].description}', style: WTextTheme.customTextTheme.titleMedium,)
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.network("${WeatherAPIConstants.weatherIconURL}${controller.weatherDetails.value.weather?[0].icon}.png", fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    );
                  })
                ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),
            Obx((){
              final WeatherController controller = Get.find();
              return Container(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
                  height: MediaQuery.of(context).size.height/6.8,
                  decoration: BoxDecoration(
                    color: WColors.cardColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                    child: WeatherCardDetails(
                      humidity: "${controller.weatherDetails.value.main?.humidity}",
                      windSpeed: "${controller.weatherDetails.value.wind?.speed}",
                      description: "${controller.weatherDetails.value.weather?[0].description}",
                    )
              );
            })
          ],
        ),
      ),
    );
  }
}
