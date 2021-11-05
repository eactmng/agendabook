import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';


class IconRoundBox extends StatelessWidget {
  final String title;
  final String icon;

  IconRoundBox({Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 0.5, color: fBorderColor),
          color: Colors.white),
      child: Row(children: [
        Image(
          image: AssetImage(
            this.icon,
          ),
          height: 12,
          width: 12,
        ),
        SizedBox(width: 10),
        Text('${title}',
            textAlign: TextAlign.center, style: textTheme().bodyText1!.copyWith(fontSize: 14.0, color: fTextColor)),
      ]),
    );
  }
}
