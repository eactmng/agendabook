import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';


class ToggleType1 extends StatelessWidget {
  final List<bool> selections;
  final List<String> texts;
  Function(int value) onPressed;
  final String? type;
  int? size;

  ToggleType1({required this.selections, required this.texts, required this.onPressed, this.type, this.size});

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
      textStyle: textTheme().bodyText2,
      children: List.generate(this.texts.length, (index) {
        return Container(
          alignment: Alignment.center,
          width: _buttonWidth(context),
          child: Text(this.texts[index].tr),
        );
      }),
      onPressed: this.onPressed,
      isSelected: this.selections,
    );
  }

  double _buttonWidth(BuildContext context) {
    final buttonCount = this.texts.length;
    if (this.size == null) {
      this.size = 38;
    }
    final width = (MediaQuery.of(context).size.width - this.size!) / buttonCount;
    return width;
  }
}
