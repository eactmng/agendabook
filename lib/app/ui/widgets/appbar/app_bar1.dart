import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/controller/common/user_main_controller.dart';
import 'package:agendabook/app/ui/pages/common/search_page.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class AppBar1 extends StatelessWidget with PreferredSizeWidget {

  final UserMainController c = Get.put(UserMainController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
          color: Colors.white),
      child: AppBar(
          // count가 변경 될 때마다 Obx(()=> 를 사용하여 Text()에 업데이트합니다.
          title: Obx(() =>
              Text("${c.appbarTitle.value}", style: textTheme().headline1)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search), // 검색 아이콘 생성
              onPressed: () => Get.to(SearchPage()),
            ),
            // NamedIcon(
            //   iconData: Icons.notifications_none ,
            //   notificationCount: 10,
            //   onTap: () {},
            // ),
            Badge(
              position: BadgePosition.topEnd(top: 3, end: 6),
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(10),
              badgeColor: fPrimaryColor,
              badgeContent: Text('10', style: TextStyle(color: Colors.white, fontSize: 10)),
              child: IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ),
          ],
          //bottom: TopMenu()
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}
