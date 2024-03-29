import 'package:billmanager/shared/theme/colors.dart';
import 'package:billmanager/shared/theme/theme.dart';
import 'package:flutter/material.dart';

class EditableTextWidget extends StatelessWidget {
  final bool isEditable;
  final TextEditingController text;

  const EditableTextWidget(
      {Key? key, required this.isEditable, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var decorationEnabled = const InputDecoration(
        hoverColor: AppColors.buttonPrimaryColor,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.buttonPrimaryColor),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.buttonPrimaryColor),
        ),
        fillColor: AppColors.buttonPrimaryColor);

    //Input decoration with no border
    var decorationDisabeled = const InputDecoration(border: InputBorder.none);

    var decoration = isEditable ? decorationEnabled : decorationDisabeled;

    return SizedBox(
      width: 200, // provide a specific width for the TextField
      child: TextField(
          style: appTheme.textTheme.bodyLarge,
          controller: text,
          enabled: isEditable,
          decoration: decoration),
    );
  }
}
