import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class DropdownBox extends StatelessWidget {
  String dropdownValue;
  List<String> dropdownList;
  Function(String? newValue) onChanged;

  DropdownBox({Key? key, required this.dropdownValue, required this.dropdownList, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: fBorderColor,
          width: 0.6,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        value: this.dropdownValue,
        icon: const Icon(Icons.arrow_forward_ios),
        iconSize: 15,
        isExpanded: true,
        style: TextStyle(
          color: fTextColor,
        ),
        onChanged: this.onChanged,
        items: this.dropdownList.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
