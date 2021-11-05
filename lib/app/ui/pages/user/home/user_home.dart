import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:agendabook/app/ui/pages/user/home/user_home_tab1.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:agendabook/app/ui/widgets/modal/bottom_modal.dart';
import 'package:agendabook/app/ui/pages/user/home/top_tab_user_home.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = ["전체".tr, "사회".tr, "경제".tr, "문화/연예".tr, "제품".tr, "건강".tr, "기타".tr];

    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(width: 0.6, color: Colors.grey)), color: Colors.white),
            child: TextButton(
              onPressed: () {
                BottomModal(cont: _bottomModal(context)).show(context);
              },
              child: Row(children: [
                Text(
                  'Agenda'.tr,
                  style: textTheme().headline1,
                ),
                SizedBox(width: 5),
                Icon(
                  FontAwesomeIcons.chevronCircleDown,
                  color: fPrimaryColor,
                  size: 16,
                ),
              ]),
            ),
          ),
          TopTabUserHome(categories: categories, isScroll: true),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                UserHomeTab1(),
                Container(
                    child: Center(
                  child: Text('${categories[3]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[3]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[3]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[4]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[5]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[6]}'),
                )),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

Container _bottomModal(context) {
  return Container(
    height: 300,
    color: Colors.white,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Text('Modal BottomSheet'),
          ElevatedButton(
            child: const Text('Close BottomSheet'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    ),
  );
}
