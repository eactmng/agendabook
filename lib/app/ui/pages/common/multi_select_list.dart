import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/controller/common/multi_select_list_controller.dart';
import 'package:agendabook/app/ui/widgets/appbar/app_bar2.dart';

/// This is the main application widget.
class MultiSelectList extends StatelessWidget {
  static const String _title = 'Flutter Multi Select List Items';

  MultiSelectListController c = Get.put(MultiSelectListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(_title),
            actions: (c.isSelecting)
                ? <Widget>[
                    IconButton(
                      icon: Icon(Icons.select_all),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {},
                    )
                  ]
                : <Widget>[]),
        body: GetBuilder<MultiSelectListController>(builder: (_) {
          return SafeArea(
              child: Container(
                  child: ListView.builder(
                      itemCount: c.list.length,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: InkWell(
                                onTap: () {},
                                child: Container()));
                      })));
        }));
  }
}
