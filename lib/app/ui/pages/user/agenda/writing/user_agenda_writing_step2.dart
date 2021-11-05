import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/controller/user/agenda/user_agenda_wrting_controller.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:agendabook/app/ui/widgets/radio/custom_radio.dart';
import 'package:agendabook/app/ui/widgets/toggle/toggle_type3.dart';
import 'package:agendabook/app/ui/widgets/dropdown/dropdown_box.dart';

class UserAgendaWritingStep2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserAgendaWritingController c = Get.put(UserAgendaWritingController());

    return GetBuilder<UserAgendaWritingController>(builder: (_) {
      return Container(
        color: Colors.white,
        child: ListView(
          padding: const EdgeInsets.only(bottom: 30),
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              child: Row(children: [
                Text(
                  'Step.2  Agenda 작성'.tr,
                  style: textTheme().headline1,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 10, bottom: 10),
              child: Row(children: [
                Text(
                  '카테고리'.tr,
                  style: textTheme().headline2,
                ),
              ]),
            ),
            DropdownBox(
                dropdownList: c.dropdownList1,
                dropdownValue: c.dropdownValue1,
                onChanged: (String? newValue) {
                  c.dropdownValue1 = newValue!;
                  c.update();
                }),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
              child: Row(children: [
                Text(
                  '파일첨부'.tr,
                  style: textTheme().headline2,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: ToggleType3(
                selections: c.selections4,
                texts: ['이미지'.tr, '영상'.tr],
                icons: [FontAwesomeIcons.image, FontAwesomeIcons.photoVideo],
                onPressed: (index) {
                  for (int i = 0; i < c.selections4.length; i++) {
                    c.selections4[i] = i == index;
                  }
                  c.update();

                },
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 14),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.link, size: 15),
                  hintText: '영상 링크'.tr,
                  hintStyle: textTheme().bodyText2,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: fBorderColor, width: 0.6)
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
              child: Row(children: [
                Text(
                  '개요작성'.tr,
                  style: textTheme().headline2,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: TextField(
                maxLines: 4,
                decoration: new InputDecoration(
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: new BorderSide(
                        color: fBorderColor,
                        width: 0.6,
                      )
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 18, top: 20, bottom: 10),
              child: Row(children: [
                Text(
                  '문항수'.tr,
                  style: textTheme().headline2,
                ),
              ]),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: CustomRadio(
                labels: ['1','2','3','4','5'],
                values: ['1','2','3','4','5'],
                onPressed: (value) {
                  print(value);
                },
              ),
            ),
          ],
        ),
      );
    });
  }

}
