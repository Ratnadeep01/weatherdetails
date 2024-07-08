import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weatherdetails/utils/constants/colors.constant.dart';

import '../../controllers/textField_controller.dart';



class CustomTextField extends StatelessWidget {
  final TextFieldController controller = Get.put(TextFieldController());
  CustomTextField({
    required this.hint,
    super.key,
  });
  String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.textEditingController,
      cursorColor: WColors.textWhite,
      decoration: InputDecoration(
          hintText: hint,
      ),
    );
  }
}
