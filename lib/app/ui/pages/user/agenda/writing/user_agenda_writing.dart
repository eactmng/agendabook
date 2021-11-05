import 'package:agendabook/app/controller/user/agenda/user_agenda_wrting_controller.dart';
import 'package:agendabook/app/ui/pages/user/agenda/writing/user_agenda_writing_step1.dart';
import 'package:agendabook/app/ui/pages/user/agenda/writing/user_agenda_writing_step2.dart';
import 'package:agendabook/app/ui/pages/user/agenda/writing/user_agenda_writing_step3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:agendabook/app/ui/widgets/appbar/app_bar2.dart';
import 'package:agendabook/app/ui/widgets/dialog/confirm.dart';


class UserAgendaWriting extends StatelessWidget {
  static const String _title = 'WRITING';

  List<Widget> _stepPages = [
    UserAgendaWritingStep1(),
    UserAgendaWritingStep2(),
    UserAgendaWritingStep3(),
  ];

  @override
  Widget build(BuildContext context) {
    UserAgendaWritingController c = Get.put(UserAgendaWritingController());

    return Scaffold(
        appBar: AppBar2(title: _title),
        body: GetBuilder<UserAgendaWritingController>(builder: (_) {
          return GestureDetector(
              onTap: () {
                // 키보드 숨김
                FocusScope.of(context).unfocus();
              },
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: PageView.builder(
                        physics: new NeverScrollableScrollPhysics(),
                        controller: c.pageController,
                        itemCount: _stepPages.length,
                        itemBuilder: (BuildContext context, int index) {
                          return _stepPages[index % _stepPages.length];
                        },
                      ),
                    ),
                    getButton(c, context),
                  ],
                ),
              ));
        }));
  }

  Container getButton(UserAgendaWritingController c, BuildContext context) {
    print("c.curPage : ${c.curPage}");
    switch (c.curPage) {
      case 0:
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: fSecondaryColor, minimumSize: Size(MediaQuery.of(context).size.width, 50)),
                child: Text(
                  'NEXT',
                  style: textTheme().subtitle2!.copyWith(fontSize: 16.0, color: fPrimaryColor),
                ),
                onPressed: () {
                  c.nextPage();
                },
              )
            ],
          ),
        );
        break;
      case 1:
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0XFFEAEAEA), minimumSize: Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'PREV',
                  style: textTheme().subtitle2!.copyWith(fontSize: 16.0),
                ),
                onPressed: () {
                  c.previousPage();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: fSecondaryColor, minimumSize: Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'NEXT',
                  style: textTheme().subtitle2!.copyWith(fontSize: 16.0, color: fPrimaryColor),
                ),
                onPressed: () {
                  c.nextPage();
                },
              )
            ],
          ),
        );
        break;
      case 2:
        return Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0XFFEAEAEA), minimumSize: Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'PREV',
                  style: textTheme().subtitle2!.copyWith(fontSize: 16.0),
                ),
                onPressed: () {
                  c.previousPage();
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: fPrimaryColor, minimumSize: Size(MediaQuery.of(context).size.width / 2, 50)),
                child: Text(
                  'SAVE & PREVIEW',
                  style: textTheme().subtitle2!.copyWith(fontSize: 16.0, color: Colors.white),
                ),
                onPressed: () {
                  ConfirmModal(
                    title: '저장하시겠습니까?'.tr,
                  ).show(context).then((exit) {
                    if (exit!) {
                      Get.back();
                    }
                  });
                },
              )
            ],
          ),
        );
        break;
      default:
        return Container();
    }
  }
}
