import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';


class WritingAnswerTab extends StatelessWidget {
  List<String> categories;
  List<String> categories_icon;
  List<String> texts;

  WritingAnswerTab(
      {Key? key, required this.categories, required this.categories_icon, required this.texts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonsTabBar(
        backgroundColor: Colors.white,
        borderColor: fPrimaryColor,
        unselectedBackgroundColor: Colors.white,
        unselectedBorderColor: Colors.black12,
        unselectedLabelStyle: TextStyle(color: Colors.black54),
        labelStyle: textTheme().bodyText1!.copyWith(fontSize: 10.0),
        borderWidth: 1,
        height: 120,
        physics: new NeverScrollableScrollPhysics(),
        tabs: List.generate(
          categories.length,
          (index) => Tab(
            icon: Container(
              width: 95,
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(left: 5),
              child: Column(children: [
                new Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Image(
                        image: AssetImage(
                          categories_icon[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                      height: 26,
                      width: 26,
                    ),),
                SizedBox(
                  height: 20,
                ),
                new Align(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    categories[index],
                    style: textTheme().subtitle2,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                new Align(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    texts[index],
                    style: textTheme().subtitle2!.copyWith(fontSize: 12.0),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
