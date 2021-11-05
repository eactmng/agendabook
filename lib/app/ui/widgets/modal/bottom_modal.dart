import 'package:flutter/material.dart';

class BottomModal {
  Container cont;

  BottomModal({
    required this.cont,
  });

  void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext context) {
        return cont;
      },
    );
  }
}
