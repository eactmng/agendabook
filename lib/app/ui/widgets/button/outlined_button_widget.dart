import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final VoidCallback? onPressed;
  Color? borderColor;

  OutlinedButtonWidget({this.icon, this.text, this.onPressed, this.borderColor = fPrimaryColor});

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          primary: borderColor,
          side: BorderSide(width: 5.0, color: borderColor!),
        ),
        onPressed: this.onPressed,
        child: Icon(
          this.icon,
          color: Colors.white,
        ),
      );
    } else {
      return OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: borderColor,
          ),
          onPressed: this.onPressed,
          child: Text(
            text!,
            style: textTheme().bodyText1!.copyWith(fontSize: 12.0),
          ));
    }
  }
}
