import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class AppBar2 extends StatelessWidget with PreferredSizeWidget {
  final String title;

  AppBar2({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
          color: Colors.white),
      child: AppBar(
          title: Text(title, style: textTheme().headline1),
          centerTitle: true,
          actions: <Widget>[
            // IconButton(
            //   icon: Icon(Icons.search), // 검색 아이콘 생성
            //   onPressed: () => Get.to(SearchPage()),
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
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
