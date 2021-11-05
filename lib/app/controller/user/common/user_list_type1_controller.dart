import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/data/model/model.dart';
import 'package:agendabook/app/data/model/neighborhood_life.dart';
import 'package:agendabook/app/data/provider/request_api.dart';
import 'dart:convert';

import 'package:agendabook/app/data/provider/url.dart';

class UserListType1Controller extends GetxController {
  var scrollController = ScrollController();

  final postList = [];

  var isLoading = false;
  var hasMore = false;

  @override
  void onInit() {
    super.onInit();

    _getAll();

    this.scrollController.addListener(() {
      if (this.scrollController.position.pixels ==
          this.scrollController.position.maxScrollExtent &&
          this.hasMore) {
        print(hasMore);
        _getAll();
      }
    });
  }

  _getAll() {
    isLoading = true;

    // String url = urlBase + 'posts/';
    // RequestApi request = RequestApi(url: url, body: null);
    // request.get().then((value) {
    //   if (value.statusCode == 200) {
    //     Iterable jsonResponse = json.decode(value.body);
    //     List<MyModel> listMyModel =
    //     jsonResponse.map((model) => MyModel.fromJson(model)).toList();
    //     listMyModel.length = 10;
    //
    //     postList.addAll(listMyModel);
    //
    //     hasMore = postList.length < 30;
    //     isLoading = false;
    //
    //     update();
    //
    //   } else {
    //     print("connect error: " + value.reasonPhrase!);
    //   }
    // }).catchError((onError) {
    //   print("error: " + onError);
    // });
    neighborhoodLifeList.length = 10;
    postList.addAll(neighborhoodLifeList);

    hasMore = postList.length < 15;
    isLoading = false;
    update();
  }

  reload() async {
    postList.clear();

    isLoading = true;
    hasMore = true;
    update();
    await Future.delayed(Duration(seconds: 1));

    _getAll();
  }

}
