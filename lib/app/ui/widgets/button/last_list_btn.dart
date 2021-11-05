import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LastListBtn extends StatelessWidget {
  final VoidCallback? onPressed;

  LastListBtn({Key? key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: [
            Text('데이터의 마지막 입니다'.tr),
            IconButton(
              onPressed: this.onPressed,
              icon: Icon(Icons.refresh_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
