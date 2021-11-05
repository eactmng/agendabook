import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _txtController = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        // The search area here
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                controller: _txtController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        _txtController.clear();
                      },
                    ),
                    hintText: '검색어를 입력해주세요.'.tr,
                    hintStyle: textTheme().subtitle1,
                    border: InputBorder.none),
              ),
            ),
          )),
    );
  }
}