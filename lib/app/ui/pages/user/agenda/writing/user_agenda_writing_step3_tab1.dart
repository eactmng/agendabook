import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/controller/user/agenda/user_agenda_wrting_controller.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class UserAgendaWritingStep3Tab1 extends StatelessWidget {
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
        padding: EdgeInsets.only(top: 15, bottom: 10, left: 25, right: 25),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(bottom: 12),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                padding: EdgeInsets.only(top: 3),
                child: Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: fTextColor,
                  size: 18,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '복수응답'.tr,
                style: textTheme().bodyText2,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 12),
                hintText: '답변 1'.tr,
                hintStyle: textTheme().bodyText2,
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: fBorderColor, width: 0.6)),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 12),
              hintText: '답변 2'.tr,
              hintStyle: textTheme().bodyText2,
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: fBorderColor, width: 0.6)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Image(
              image: AssetImage(
                'images/icon_plus.png',
              ),
              height: 50,
              width: 50,
            ),
          ),
        ]),
      );
    });
  }
}
