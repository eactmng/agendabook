import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/controller/user/agenda/user_agenda_wrting_controller.dart';
import 'package:agendabook/app/routes/app_pages.dart';
import 'package:agendabook/app/ui/pages/user/agenda/user_agenda_tab1.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:agendabook/app/ui/widgets/button/outlined_button_widget.dart';
import 'package:agendabook/app/ui/widgets/button/raised_button_widget.dart';
import 'package:agendabook/app/ui/widgets/image/image_container.dart';
import 'package:agendabook/app/ui/pages/user/agenda/top_tab_agenda.dart';


class UserAgenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = ["맛집".tr, "핫딜".tr, "여행".tr, "쿠폰".tr, "아젠다".tr, "트렌드".tr, "라이프".tr];
    List<IconData> categories_icon = [Icons.food_bank, Icons.whatshot, Icons.airplanemode_active, Icons.money_sharp, Icons.view_agenda, Icons.stacked_bar_chart, Icons.nightlife];

    UserAgendaWritingController c = Get.put(UserAgendaWritingController());

    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: <Widget>[
          Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.6, color: Colors.grey)),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        ImageContainer(
                          width: 30,
                          height: 30,
                          borderRadius: 15,
                          imageUrl: 'https://placeimg.com/200/100/people',
                        ),
                        SizedBox(width: 10),
                        Text(
                          'yoojaeseok 님의 아젠다북',
                          style: textTheme().subtitle2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButtonWidget(
                          text: "HOME",
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        OutlinedButtonWidget(
                          text: "WRITING",
                          onPressed: () {
                            c.onInit();
                            Get.toNamed(Routes.USER_AGENDA_WRITING);
                          }
                        ),
                        SizedBox(width: 10),
                        OutlinedButtonWidget(
                          text: "HISTORY",
                          onPressed: () {},
                        ),
                        SizedBox(width: 10),
                        RaisedButtonWidget(
                          text: "PICK",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          TopTabAgena(categories: categories, categories_icon: categories_icon, isScroll: true),
          Expanded(
            child: Container(
              child: TabBarView(children: [
                UserAgendaTab1(),
                Container(
                    child: Center(
                  child: Text('${categories[1]}'),
                )),
                Container(
                    child: Center(
                  child: Text('${categories[2]}'),
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
