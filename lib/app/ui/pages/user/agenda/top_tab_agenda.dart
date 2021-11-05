import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';

class TopTabAgena extends StatelessWidget {
  List<String> categories;
  List<IconData> categories_icon;
  bool isScroll = false;

  TopTabAgena({Key? key, required this.categories, required this.categories_icon, required this.isScroll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(width: 0.6, color: Colors.grey)), color: Colors.white),
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: fPrimaryColor,
          unselectedLabelColor: Colors.black54,
          indicatorColor: Colors.transparent,
          isScrollable: isScroll,
          tabs: List.generate(
            categories.length,
            (index) => Tab(
              icon: Icon(
                categories_icon[index],
                size: 26,
              ),
              child: Text(
                categories[index],
                style: textTheme().bodyText1!.copyWith(fontSize: 10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
