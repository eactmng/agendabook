import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/controller/user/agenda/user_agenda_wrting_controller.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:agendabook/app/ui/widgets/toggle/toggle_type1.dart';

class UserAgendaWritingStep3Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserAgendaWritingController c = Get.put(UserAgendaWritingController());

    return GetBuilder<UserAgendaWritingController>(builder: (_) {
      return Container(
        decoration: BoxDecoration(
          color: Color(0xfff7f7f7),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.only(top: 20, bottom: 10, left: 25, right: 25),
        child: ListView(children: [
          Container(
            height: 40,
            alignment: Alignment.center,
            child: ToggleType1(
              selections: c.selections5,
              texts: ['텍스트'.tr, '숫자'.tr],
              size: 58,
              onPressed: (index) {
                for (int i = 0; i < c.selections5.length; i++) {
                  c.selections5[i] = i == index;
                }
                c.update();
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 3),
            child: Text(
              '* 대상자가 직접 답을 입력합니다.'.tr,
              style: textTheme().bodyText2,
            ),
          )
        ]),
      );
    });
  }
}
