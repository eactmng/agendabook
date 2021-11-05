import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';


class CircleIcon extends StatelessWidget {
  final IconData iconData;
  final String title;
  final bool selected;

  const CircleIcon({Key? key, required this.iconData, required this.title, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selected) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: fPrimaryColor, shape: BoxShape.circle),
            padding: EdgeInsets.all(15),
            child: Icon(
              this.iconData,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          Text(
            this.title,
            style: textTheme().bodyText1!.copyWith(fontSize: 13.0),
          )
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(border: Border.all(color: fPrimaryColor), shape: BoxShape.circle),
            padding: EdgeInsets.all(15),
            child: Icon(
              this.iconData,
              size: 20,
              color: fPrimaryColor,
            ),
          ),
          SizedBox(height: 8),
          Text(
            this.title,
            style: textTheme().bodyText1!.copyWith(fontSize: 13.0),
          )
        ],
      );
    }
  }
}
