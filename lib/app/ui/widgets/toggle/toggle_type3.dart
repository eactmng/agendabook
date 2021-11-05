import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class ToggleType3 extends StatelessWidget {
  final List<bool> selections;
  final List<String> texts;
  final List<IconData> icons;
  Function(int value) onPressed;

  ToggleType3({required this.selections, required this.texts, required this.icons, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      color: fBorderColor,
      selectedColor: fPrimaryColor,
      selectedBorderColor: fPrimaryColor,
      borderColor: fBorderColor,
      fillColor: Colors.white,
      borderRadius: BorderRadius.circular(5),
      textStyle: textTheme().bodyText2,
      children: List.generate(this.texts.length, (index) {
        return Container(
          width: 70,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Column(children: [
                  Icon(this.icons[index], size: 25),
                  SizedBox(height: 10),
                  Text(
                    this.texts[index].tr,
                    style: textTheme().bodyText2,
                  )
                ]),
              ),
            ],
          ),
        );
      }),
      onPressed: this.onPressed,
      isSelected: this.selections,
    );
  }

  double _buttonWidth(BuildContext context) {
    final buttonCount = this.texts.length;

    final width = (MediaQuery.of(context).size.width - 38) / buttonCount;
    return width;
  }
}
