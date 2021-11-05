import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class ConfirmModal {
  String title;

  ConfirmModal({
    required this.title
  });

  Future<bool?> show(context) async {
    bool? result = await showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(title),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context, false), // passing false
                child: Text(
                  "Cancel",
                  style: TextStyle(color: fTextColor),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context, true), // passing true
                child: Text(
                  "OK",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: fPrimaryColor,
                ),
              ),
            ],
          );
        }
    );
    return result;
  }
}
