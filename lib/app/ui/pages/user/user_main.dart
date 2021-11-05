import 'dart:io';

import 'package:agendabook/app/ui/widgets/dialog/alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/controller/common/user_main_controller.dart';
import 'package:agendabook/app/ui/pages/user/home/user_home.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:agendabook/app/ui/widgets/appbar/app_bar1.dart';
import 'package:agendabook/app/ui/pages/user/common/bottom_bar_user.dart';
import 'package:agendabook/app/ui/widgets/menu/left_menu.dart';

import 'agenda/user_agenda.dart';

class UserMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserMainController>(
      init: UserMainController(),
      builder: (_) {
        return new WillPopScope(
            onWillPop: () => showExitPopup(context),
            child: Scaffold(
                appBar: AppBar1(),
                drawer: LeftMenu(),
                backgroundColor: Colors.white,
                body: SafeArea(
                  child: IndexedStack(
                    index: _.tabIndex,
                    children: <Widget>[
                      UserHome(),
                      UserAgenda(),
                      Container(
                        child: Center(
                          child: Text('데일리'),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('지갑'),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text('내정보'),
                        ),
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: BottomBarUser(),
                floatingActionButton: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () => AlertModal(title: "Test").show(context)
                )
            )
        );
      },
    );
  }

  Future<bool> showExitPopup(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("종료하시겠습니까?".tr),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel", style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      )),
                      SizedBox(width: 15),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            exit(0);
                          },
                          child: Text("OK"),
                          style: ElevatedButton.styleFrom(
                            primary: fPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
