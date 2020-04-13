import 'package:flutter_ui_demo/views/home_view.dart';
import 'package:flutter_ui_demo/views/login_view.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor(
    options: SailorOptions(
      handleNameNotFoundUI: true,
    ),
  );

  static Future<void> createRoutes() async {
    sailor
      ..addRoute(SailorRoute(
        name: "/login",
        builder: (context, args, params) {
          return LoginView();
        },
      ))
      ..addRoute(SailorRoute(
        name: "/home",
        builder: (context, args, params) {
          return HomeView();
        },
      ));
  }

}
