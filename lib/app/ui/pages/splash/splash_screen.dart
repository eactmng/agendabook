import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:agendabook/app/ui/pages/user/user_main.dart';
import 'package:agendabook/app/ui/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1500), () {
      Get.off(() => UserMain());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fPrimaryColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                "Agenda Book",
                style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Padding(
          //     padding: EdgeInsets.all(24),
          //     child: TextButton(
          //       child: Text("자신과 사회가 함께 고민하는 다양함. 아젠다에 오신것을 환영합니다."),
          //       onPressed: () {
          //         _completeSplash(context, Menu1Main());
          //       },
          //     ),
          //   ),
          // ),
        ],
      )),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => widget));
  }
}
