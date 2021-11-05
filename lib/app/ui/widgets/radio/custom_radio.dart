import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class CustomRadio extends StatelessWidget {
  final List<String> labels;
  final List<String> values;
  Function(String value) onPressed;
  final String? type;

  CustomRadio({required this.labels, required this.values, required this.onPressed, this.type});

  @override
  Widget build(BuildContext context) {
    var borderRadius = null;
    if (this.type == 'top') {
      borderRadius = BorderRadius.only(topLeft: Radius.circular(7), topRight: Radius.circular(7));
    } else if (this.type == 'bottom') {
      borderRadius = BorderRadius.only(bottomLeft: Radius.circular(7), bottomRight: Radius.circular(7));
    } else if (this.type == 'middle') {
      borderRadius = null;
    } else {
      borderRadius = BorderRadius.circular(5);
    }

    return CustomRadioButton(
        elevation: 0,
        width: 60,
        //spacing: 12,
        //padding: 10,
        enableShape: true,
        unSelectedColor: Colors.white,
        buttonLables: labels,
        buttonValues: values,
        buttonTextStyle: ButtonTextStyle(
            selectedColor: fPrimaryColor, unSelectedColor: fTextColor, textStyle: TextStyle(fontSize: 16)),
        radioButtonValue: (value) {
          print(value);
        },
        selectedColor: fSecondaryColor,
        selectedBorderColor: fBorderColor,
        unSelectedBorderColor: fBorderColor);
  }
}
