import 'package:agendabook/app/ui/pages/user/user_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class LeftMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
              backgroundColor: Colors.white,
            ),
            accountName: Text('이액션'.tr, style: textTheme().bodyText1!.copyWith(fontSize: 14.0, color: Colors.white)),
            accountEmail: Text('e-act@email.com', style: textTheme().bodyText1!.copyWith(fontSize: 14.0, color: Colors.white)),
            onDetailsPressed: () {
              Navigator.of(context).pop();
            },
            decoration: BoxDecoration(
                color: fPrimaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40.0), bottomRight: Radius.circular(40.0))),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.grey[850],
            ),
            title: Text(
              '사용자'.tr,
              style: textTheme().bodyText1,
            ),
            onTap: () {
              Get.off(() => UserMain());
            },
            //trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: Text(
              '서비스 센터'.tr,
              style: textTheme().bodyText1,
            ),
            onTap: () {
              //Get.off(() => ServiceMain());
            },
            //trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.grey[850],
            ),
            title: Text(
              '광고주'.tr,
              style: textTheme().bodyText1,
            ),
            onTap: () {
              //Get.off(() => Menu2Main());
            },
            //trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
