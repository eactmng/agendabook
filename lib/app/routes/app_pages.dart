import 'package:agendabook/app/ui/pages/user/agenda/writing/user_agenda_writing.dart';
import 'package:get/get.dart';
import 'package:agendabook/app/ui/pages/splash/splash_screen.dart';
import 'package:agendabook/app/ui/pages/user/user_main.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
        name: Routes.USER,
        page: () => UserMain(),
    ),
    GetPage(
      name: Routes.USER_AGENDA_WRITING,
      page: () => UserAgendaWriting(),
    ),
    // GetPage(
    //     name: Routes.SERVICE,
    //     page: () => ServiceMain(),
    // ),
  ];
}

