import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';


class ToggleType2 extends StatelessWidget {
  final List<bool> selections;
  final List<String> texts;
  Function(int value) onPressed;
  final String? type;

  ToggleType2({required this.selections, required this.texts, required this.onPressed, this.type});

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

    return ToggleButtons(
      color: fTextColor,
      selectedColor: fPrimaryColor,
      selectedBorderColor: fPrimaryColor,
      fillColor: Colors.white,
      borderColor: fBorderColor,
      borderRadius: borderRadius,
      textStyle: textTheme().bodyText1!.copyWith(fontSize: 15.0),
      children: List.generate(this.texts.length, (index) {
        return Container(
          alignment: Alignment.center,
          width: _buttonWidth(context, index),
          child: Text(this.texts[index].tr),
        );
      }),
      onPressed: this.onPressed,
      isSelected: this.selections,
    );
  }

  double _buttonWidth(BuildContext context, int index) {
    final buttonCount = this.texts.length;

    double width = 0;
    if (index == 0) {
      width = (MediaQuery.of(context).size.width - 37) / 3;
    } else {
      width = (MediaQuery.of(context).size.width - 37) - ((MediaQuery.of(context).size.width - 38) / 3);
    }
    return width;
  }
}
